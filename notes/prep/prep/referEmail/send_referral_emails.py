import pandas as pd
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.application import MIMEApplication
import sys
import os

# SMTP Configuration (Gmail Example)
SMTP_SERVER = 'smtp.gmail.com'
SMTP_PORT = 587
SENDER_EMAIL = 'jackfeng37@gmail.com'
# Do NOT hardcode your password in the script
# Instead, use environment variables or a config file
SENDER_PASSWORD = os.environ.get('EMAIL_PASSWORD')  # Set this as environment variable

def send_email(recipient_email, subject, body, resume_path):
    """Sends an email with attachment"""
    msg = MIMEMultipart()
    msg['From'] = SENDER_EMAIL
    msg['To'] = recipient_email
    msg['Subject'] = subject
    
    # Attach message body
    msg.attach(MIMEText(body, 'plain'))
    
    # Attach resume PDF based on category
    try:
        with open(resume_path, "rb") as attachment:
            part = MIMEApplication(attachment.read(), Name='resume.pdf')
            part['Content-Disposition'] = f'attachment; filename=resume.pdf'
            msg.attach(part)
    except FileNotFoundError:
        print(f"Error: Resume file not found at {resume_path}")
        return False
    
    try:
        server = smtplib.SMTP(SMTP_SERVER, SMTP_PORT)
        server.starttls()
        server.login(SENDER_EMAIL, SENDER_PASSWORD)
        server.sendmail(SENDER_EMAIL, recipient_email, msg.as_string())
        print(f"Email sent successfully to {recipient_email}")
        server.quit()
        return True
    except Exception as e:
        print(f"Failed to send to {recipient_email}: {str(e)}")
        return False

def generate_email_body(row):
    """Generates personalized email content"""
    company = row['Company Name']
    job_link = row.get('Job Link', 'Not provided')  # Use get() to handle missing columns
    referral_name = row.get('Referal Name', 'Hiring Manager')  # Default if name is missing
    
    return f"""
Dear {referral_name},

I hope you're doing well!

I wanted to reach out to see if you'd be open to providing a referral for the following position:
{job_link}

I believe my skills and experience align well with the role, and I would truly appreciate your support in connecting with the hiring team. I've attached my resume for your reference—please let me know if you need any additional details.

Thank you in advance for your time and consideration. Looking forward to your thoughts!

Best regards,
Jack Feng
"""

def main(category):
    # Update the RESUME_PATH based on the category argument
    RESUME_PATH = f'D:\\Downloads\\personal\\cv_collections\\JackFengCV_{category}.pdf'
    
    # Check if resume file exists
    if not os.path.exists(RESUME_PATH):
        print(f"Error: Resume file not found at {RESUME_PATH}")
        return
    
    # Load data from Excel
    file_path = 'referral.xlsx'  # Fixed typo in filename from "referal" to "referral"
    
    try:
        df = pd.read_excel(file_path)
    except FileNotFoundError:
        print(f"Error: Excel file not found at {file_path}")
        # Create a new Excel file with proper columns if it doesn't exist
        df = pd.DataFrame(columns=['Company Name', 'Referal Name', 'Referal Email', 'Job Link', 'category', 'Status'])
    
    # Add a new column for category if not exists
    if 'category' not in df.columns:
        df['category'] = category
    
    # Add a status column if not exists
    if 'Status' not in df.columns:
        df['Status'] = 'Pending'
    
    # Process each row
    for index, row in df.iterrows():
        try:
            # Skip rows that have already been processed
            if row['Status'] == 'Sent':
                print(f"Skipping row {index+1}: Email already sent")
                continue
                
            recipient_email = row['Referal Email']
            # Skip rows with "nan" email addresses
            if pd.isna(recipient_email) or recipient_email == "nan":
                print(f"Skipping row {index+1}: Invalid email address")
                df.at[index, 'Status'] = 'Invalid Email'
                continue
                
            company = row['Company Name']
            subject = f"Referral Request: {company} Job Opportunity"
            
            # Generate personalized content
            body = generate_email_body(row)
            
            # Send email
            success = send_email(recipient_email, subject, body, RESUME_PATH)
            
            # Update status
            if success:
                df.at[index, 'Status'] = 'Sent'
            else:
                df.at[index, 'Status'] = 'Failed'
                
        except KeyError as e:
            print(f"Error processing row {index+1}: Missing column {str(e)}")
            df.at[index, 'Status'] = 'Missing Data'
        except Exception as e:
            print(f"Error processing row {index+1}: {str(e)}")
            df.at[index, 'Status'] = 'Error'
    
    # Save updated DataFrame back to Excel
    try:
        # First check if file is open
        try:
            df.to_excel(file_path, index=False)
            print(f"Successfully updated {file_path}")
        except PermissionError:
            # Try with a different filename if the original is locked
            backup_path = file_path.replace('.xlsx', '_updated.xlsx')
            df.to_excel(backup_path, index=False)
            print(f"File is open by another program. Saved to {backup_path} instead")
    except Exception as e:
        print(f"Failed to save Excel file: {str(e)}")

if __name__ == "__main__":
    if len(sys.argv) != 2 or sys.argv[1] not in ['dev', 'analyst', 'data']:
        print("Usage: python script.py <category> where category is one of 'dev', 'analyst', 'data'")
        sys.exit(1)
    
    # Check if email password is set
    if not SENDER_PASSWORD:
        SENDER_PASSWORD = input("Enter your email password (or set EMAIL_PASSWORD environment variable): ")
        if not SENDER_PASSWORD:
            print("No password provided. Exiting.")
            sys.exit(1)
            
    category = sys.argv[1]
    main(category)