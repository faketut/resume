#import "../../../template.typ": project

#project("Linkit", url: "https://github.com/faketut/Linkit")
- Chrome MV3 extension auto-connects LinkedIn "People You May Know"; randomized 3–8 s delays with 100/session and 40/day caps plus invite-limit detection.
- React 18 + Chakra UI + Jotai built on `@crxjs/vite-plugin`; content-script messaging, `chrome.storage` sync/local, selector-based DOM robustness.
