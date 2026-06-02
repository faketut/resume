#!/usr/bin/env python3
"""
Referral outreach script.

Usage:
    python referral/ask_referral.py <job_title> <company_name> <job_post_url>

Steps:
  1. Finds matching contacts (same company) in data/referral-contacts.csv.
  2. Sends a referral request email to each match.

Requires:
  - EMAIL_PASSWORD env var (Gmail app password)
"""

import csv
import os
import smtplib
import sys
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
CONTACTS_CSV = ROOT / "data" / "referral-contacts.csv"

SMTP_SERVER = "smtp.gmail.com"
SMTP_PORT = 587
SENDER_EMAIL = "jackfeng37@gmail.com"
SENDER_PASSWORD = os.environ.get("EMAIL_PASSWORD")


# ── 1. Find contacts at the same company ─────────────────────────────────────

def find_contacts(company: str) -> list[dict]:
    """Return contacts whose company name fuzzy-matches the target."""
    if not company:
        return []

    target = company.lower().strip()
    matches = []

    with open(CONTACTS_CSV, newline="") as f:
        for row in csv.DictReader(f):
            row_company = (row.get("Company Name") or "").lower().strip()
            # Match if target is substring or vice versa
            if target in row_company or row_company in target:
                matches.append(row)

    return matches


# ── 2. Send referral email ────────────────────────────────────────────────────

def build_email_body(contact: dict, job_title: str, company: str, url: str) -> str:
    name = contact.get("First Name") or "there"
    return f"""Hi {name},

I hope you're doing well! I noticed you're at {company} and wanted to reach out.

I'm interested in the "{job_title}" role and would be grateful if you could refer me or point me to the right person.

Job posting: {url}

I've been working on cloud infrastructure, data pipelines, and full-stack development through my co-ops at Manulife, Treasury Board of Canada, and Lansi AI. Happy to share my resume or chat if helpful.

Thank you for your time!

Best,
Jack Feng
j36feng@uwaterloo.ca | 647-766-0178
"""


def send_email(to_email: str, subject: str, body: str) -> bool:
    if not SENDER_PASSWORD:
        print(f"  [DRY RUN] Would send to {to_email}")
        print(f"  Subject: {subject}")
        return False

    msg = MIMEMultipart()
    msg["From"] = SENDER_EMAIL
    msg["To"] = to_email
    msg["Subject"] = subject
    msg.attach(MIMEText(body, "plain"))

    try:
        server = smtplib.SMTP(SMTP_SERVER, SMTP_PORT)
        server.starttls()
        server.login(SENDER_EMAIL, SENDER_PASSWORD)
        server.sendmail(SENDER_EMAIL, to_email, msg.as_string())
        server.quit()
        print(f"  ✓ Sent to {to_email}")
        return True
    except Exception as e:
        print(f"  ✗ Failed ({to_email}): {e}")
        return False


# ── Main ──────────────────────────────────────────────────────────────────────

def main():
    if len(sys.argv) < 4:
        sys.exit(f"Usage: {sys.argv[0]} <job_title> <company_name> <job_post_url>")

    job_title = sys.argv[1]
    company = sys.argv[2]
    url = sys.argv[3]

    print(f"  Job Title: {job_title}")
    print(f"  Company:   {company}")
    print(f"  URL:       {url}")

    contacts = find_contacts(company)
    if not contacts:
        print(f"\nNo contacts found for \"{company}\" in {CONTACTS_CSV.name}")
        sys.exit(0)

    print(f"\nFound {len(contacts)} contact(s) at {company}:")
    for c in contacts:
        print(f"  • {c['First Name']} {c['Last Name']} <{c['Email']}>")

    confirm = input("\nSend referral emails? [y/N] ").strip().lower()
    if confirm != "y":
        print("Aborted.")
        sys.exit(0)

    subject = f"Referral Request – {job_title} at {company}"
    for c in contacts:
        body = build_email_body(c, job_title, company, url)
        send_email(c["Email"], subject, body)


if __name__ == "__main__":
    main()
