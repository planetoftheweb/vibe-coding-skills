# Privacy and Data Test Prompt (Beta)

> **Beta:** this is a new prompt that is still being tested. Results are a learning aid, not a professional audit or legal advice.

Two versions of the same check. If you set up a coding harness (Claude Code, Cursor, or Codex), use the **harness version** at the bottom inside your project. Otherwise, paste the **main version** into any AI. One that can open websites works best (Claude in Chrome or ChatGPT agent mode). If yours can't, the prompt tells you what to give it instead.

These are educational checks to help you build good habits. They are not legal advice.

## Main version

```
Run a beginner-friendly privacy and data check on my website. I'm a beginner, so use plain words and explain any tech or legal term the first time you use it.

These are educational checks to help me learn good habits, not legal advice. Say that once at the top of your reply, and never tell me my site is "compliant" or "legal."

Ground rules: Only look at my site and the code I share. Don't contact anyone, don't enter anyone's real personal information, and don't delete anything except test data you create. Use made-up details for any form or sign-up. Never ask for my real password.

Ask me questions one at a time and wait for each answer. If my planning files or code already answer a question, tell me your guess in one sentence and let me confirm instead of asking. Only ask what's still unclear.
1. Ask for my planning files if I have them: my PRD, agents.md, CLAUDE.md, and DESIGN.md. I can paste them or attach them. Use them to answer the questions below.
2. Ask for the link to my live site.
3. Ask what personal information it collects, for example names, emails, locations, photos, or anything people type into a form or an AI chat.
4. Ask if it has a login, and which services it uses: a database (Firebase, Supabase, Lovable Cloud), analytics (Google Analytics or similar), AI APIs (Gemini, OpenAI, Claude), payments, or email tools. If I don't know, tell me where to look.
5. Ask who it's for and roughly where they live (for example US only, or anywhere including Europe), and whether kids under 13 might use it.
6. Ask if I have a GitHub repo or can paste my code. This is optional, but it shows what the site really collects and where it sends it.

If you can't open or click around the site, tell me, then ask me for one of these, in this order:
- Screenshots of every page, including the footer, the sign-up form, and the account or settings page.
- The page text: I select all the text on each page, copy it, and paste it here.
- The code: I paste it from my builder's code view or share my GitHub repo.

Then check these, and tell me what you looked at for each one:
- Privacy policy and terms: Is there a privacy policy and a terms page that are easy to find, usually in the footer and near sign-up? Does the privacy policy match what the site really collects and which services it uses? Flag leftover template text, placeholder names, and any [brackets] I still need to fill in.
- Consent: Before the site collects personal information, does it say what it collects and why? Is there a clear checkbox or note at sign-up? If the site uses cookies, analytics, or tracking, does it tell visitors or ask first? Do trackers load before anyone agrees?
- Collect only what you need: List each piece of personal information the site asks for or saves. For each one, does the app need it to work? Flag anything extra, like a birthday or phone number the app never uses.
- User control: Can a user see what's saved about them, download a copy (export), fix it, and delete their account and data on their own? If not, is there at least a clear way to ask, like a contact page? When something is deleted, is it really gone?
- Where the data goes: Where is the data stored (which service, and which country if you can tell)? Which outside companies process it, for example when what people type gets sent to an AI API like Gemini or OpenAI? Does the site tell users this?
- GDPR and CCPA basics, in plain words: GDPR is Europe's privacy law and CCPA is California's. Based on who my site is for, list the 3 to 5 basics that matter most, like saying what you collect and why, getting consent, letting people see and delete their data, and not selling or sharing data without saying so. Keep it short and practical.
- Kids: If kids under 13 might use it, tell me that collecting their information comes with extra rules in the US (COPPA).

Rate how serious each problem is:
- High: personal information is collected or shared without people knowing, or they can't get it deleted.
- Medium: something users would expect is missing or unclear.
- Low: good practice. Fix it when you can.

Reply in this format:
Note: one line saying these are educational checks, not legal advice.
What works: 2 or 3 things the site already does well, one sentence each.
What to fix: up to 5 problems, numbered, worst first. For each one: a short title, the rating (High, Medium, or Low), what you found in one sentence, and why it matters to a real user in one sentence.
How to improve it: 3 suggestions, most important first. Each is one short sentence (under 20 words) that starts with an action word like Add, Remove, Move, Rewrite, Ask, or Explain. For new wording, name the spot, then put the new words in quotes after a colon.
Example: Add a line above the Sign up button: "By signing up, you agree to our Privacy Policy and Terms."

Then ask me which problems I want to fix (at least 2, or all of them) and wait for my answer.
Optional: prompt for your AI agent. Once I pick, write one code block I can paste into Lovable or my coding AI. Start it by warning me it can use a lot of credits, so I can fix things myself instead. It must fix only the problems I picked, change nothing else, add no new features, and not redesign anything. It must not delete any real user data. If it writes a privacy policy or terms, it must describe only what the site really does, use [brackets] for anything I need to fill in, and add a note at the top saying it's a draft to review, not legal advice. Tell it to check phone and desktop.
```

## Harness version (run inside your project in Claude Code, Cursor, or Codex)

```
Run a privacy and data check on this project. I'm a beginner, so use plain words. These are educational checks, not legal advice, so never call anything "compliant" or "legal."

Read the code first. Don't change any files, run database changes, or delete data until I pick what to fix.

First, look in the repo for my planning files: a PRD, agents.md, CLAUDE.md, and DESIGN.md. If you can't find them, ask me if I have them. I can paste them or attach them. Use them with the code to understand what the app is meant to do and collect. Then ask me, one at a time, only what's still unclear, like where my users live or whether kids might use it. Confirm any guess in one sentence instead of asking.

Look through the repo and tell me:
1. Every piece of personal information the app collects or saves, and where it lives (forms, database tables, login, browser storage, cookies, logs).
2. Every outside service that receives it (database, login, analytics, AI APIs, email, payments) and what gets sent to each one.
3. Whether there's a privacy policy, terms, About, and Contact page linked in the footer, and whether every claim in them matches what the code really does. List any mismatch, like a service the policy leaves out or a promise the app doesn't keep.
4. Whether people agree before personal information is collected and before cookies or analytics load.
5. Anything the app collects but never uses.
6. Whether users can see, export, fix, and delete their account and data.
7. Any personal information or secret keys in the code, logs, or committed files.
8. Which GDPR and CCPA basics apply, in plain words.

Reply in this format:
What works: 2 or 3 things, one sentence each.
What to fix: up to 5 problems, numbered, worst first, each rated High, Medium, or Low, with the file it's in.
How to improve it: 3 short suggestions that start with an action word.

Then ask me which problems to fix (at least 2, or all of them) and wait. Before you start, warn me that fixing can use a lot of credits. Fix only what I pick, change nothing else, and add no new features. If you write a privacy policy or terms, describe only what the app really does, use [brackets] for anything I need to fill in, and mark it as a draft to review, not legal advice. Show me what you changed before you commit, and tell me how to test it.
```

## Retest

After you make your fixes and publish again, send this in the same chat:

```
I made the fixes. Run the privacy check again and tell me what got better and what still needs work.
```
