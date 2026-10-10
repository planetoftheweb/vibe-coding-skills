---
name: privacy-check
description: "Educational privacy and data check of your own project: policy vs code, consent, data collected, user control, GDPR and CCPA basics. Not legal advice. Best run in Claude Code."
license: CC-BY-4.0
---

# Privacy Check

> **Note:** this is an educational check, not legal advice.

Follow the instructions below when the user asks for this. They are written in the user's voice: "I" and "me" mean the user, and "this project" means the repo or folder that is open. If you can't read the project files (for example in a plain chat), ask the user to share their live link plus their code, GitHub repo, or screenshots, and work from that.

Run a beginner-friendly privacy and data check on this project. I'm a beginner, so use plain words and explain any tech or legal term the first time you use it. These are educational checks, not legal advice. Say that once at the top of your reply, and never call anything "compliant" or "legal."

Don't change any files, run database changes, or delete data until I pick what to fix. If you find personal information or a secret key in the code, show only the first 4 characters.

Step 1. Read the repo yourself before asking me anything:
- Planning files: PRD, agents.md, CLAUDE.md, and DESIGN.md, to learn who the app is for and what it's meant to collect.
- The code, config, and package.json: every form, database table, login setup, browser storage, cookie, analytics script, and log that touches personal information.
- Every outside service that receives that data (database, login, analytics, AI APIs, email, payments) and what gets sent to each one.
- The privacy policy, terms, About, and Contact pages, and the footer that links them.
- Deploy config and the live URL.

Step 2. Ask me only what you can't see, one question at a time, and wait for each answer. Aim for 0 to 3 questions. Tell me any guess in one sentence so I can confirm it. Usually that's: where my users live (US only, or anywhere including Europe), whether kids under 13 might use it, and whether the live site differs from this repo.

Step 3. Check these, and tell me which file you looked at for each one:
- Privacy policy and terms: do they exist, are they linked in the footer and near sign-up, and does every claim match what the code really does? List any mismatch, like a service the policy leaves out or a promise the app doesn't keep. Flag template text and any [brackets] still to fill in.
- Consent: does the app say what it collects and why before collecting it? Do cookies, analytics, or trackers load before anyone agrees?
- Collect only what you need: list each piece of personal information. Does the app actually use it? Flag anything extra.
- User control: can users see, export, fix, and delete their account and data? When something is deleted, is it really gone?
- Where the data goes: which service stores it, in which region if the config says, and which outside companies process it, like an AI API that gets what people type. Does the site tell users?
- GDPR and CCPA basics, in plain words: GDPR is Europe's privacy law and CCPA is California's. Based on where my users live, list the 3 to 5 basics that matter most.
- Kids: if kids under 13 might use it, explain that collecting their information has extra rules in the US (COPPA).

Rate how serious each problem is:
- High: personal information is collected or shared without people knowing, or they can't get it deleted.
- Medium: something users would expect is missing or unclear.
- Low: good practice. Fix it when you can.

Reply in this format:
Note: one line saying these are educational checks, not legal advice.
What works: 2 or 3 things, one sentence each.
What to fix: up to 5 problems, numbered, worst first. For each one: a short title, the rating (High, Medium, or Low), the file it's in, what you found, and why it matters to a real user.
How to improve it: 3 suggestions, most important first. Each is one short sentence (under 20 words) that starts with an action word like Add, Remove, Move, Rewrite, Ask, or Explain. For new wording, put the new words in quotes after a colon.
Example: Add a line above the Sign up button: "By signing up, you agree to our Privacy Policy and Terms."

Then ask me which problems I want to fix (at least 2, or all of them) and wait. Before you start, warn me that fixing can use a lot of credits, so I can fix things myself instead. Fix only what I pick, change nothing else, add no new features, and don't delete real user data. If you write or change a privacy policy or terms, describe only what the app really does, use [brackets] for anything I need to fill in, and mark it "Draft. Not legal advice. Review before relying on it." Show me the diff before you commit and wait for my OK. Check phone and desktop.

## Retest

When the user says they made fixes, run the check again and report what got better and what still needs work, in the same format.
