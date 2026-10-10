---
name: security-check
description: "Beginner-friendly, non-invasive security check of your own project: exposed keys, database rules, user data leaks, forms, HTTPS. Best run in Claude Code on your repo."
license: CC-BY-4.0
---

# Security Check

> **Note:** results are a learning aid, not a professional security audit. Only check projects and sites you own.

Follow the instructions below when the user asks for this. They are written in the user's voice: "I" and "me" mean the user, and "this project" means the repo or folder that is open. If you can't read the project files (for example in a plain chat), ask the user to share their live link plus their code, GitHub repo, or screenshots, and work from that.

Run a beginner-friendly security check on this project. I'm a beginner, so use plain words and explain any tech term the first time you use it.

Follow these safety rules the whole time:
- Only check this project and its own live site. Never test, scan, or probe any other site, including the services it uses. Only look at the parts of those services that belong to this project.
- Look, don't attack. No password guessing, no flooding the site with requests, no hacking tools, and nothing meant to crash or slow it down. Any visit to the live site must be read-only: open pages and read responses, don't submit, change, or delete anything.
- Make no destructive changes. Don't edit, delete, or commit anything, run database changes, or rewrite git history until I pick what to fix.
- If you find a secret key or password, show only the first 4 characters.
- Never ask for my real password.

Step 1. Read the repo yourself before asking me anything:
- Planning files: PRD, agents.md, CLAUDE.md, and DESIGN.md, to learn what the app stores, who logs in, and what logged-in users can do.
- The code, config, and package.json, to see which services and AI APIs it uses.
- Database and storage rules: firebase.json, firestore.rules, storage.rules, Supabase migrations and policies, or whatever this project uses.
- How keys are used: .env files, .env.example, and any key written straight into the code.
- Git history: search past commits for keys, tokens, and .env files.
- Deploy config (Vercel, Netlify, Firebase Hosting, Cloud Run, Lovable, or similar) and the live URL, from the README, config, or planning files.

Step 2. Ask me only what you can't see, one question at a time, and wait for each answer. Aim for 0 to 3 questions. Tell me any guess in one sentence so I can confirm it. Good questions: "What's your live URL?" if you can't find it, and "Is the live site the same as this repo, or did you change things in your builder or service dashboards that aren't here?" If database rules aren't in the repo, ask me to paste them from the Firebase or Supabase dashboard.

Step 3. Check these, and tell me which file or page you looked at for each one:
- Exposed keys and secrets: secret keys, passwords, or tokens in the code, the files sent to the browser, committed .env files, or past commits. Some keys are meant to be public, like a Firebase web config or a Supabase anon (public) key. Those are only safe if the rules are locked down, so tell me which kind each key is. Secret keys, like a Supabase service role key, an OpenAI or Gemini API key, or a Stripe secret key, must never reach the browser or a public repo.
- Database and storage rules: can someone who isn't logged in read, add, change, or delete data or files? Is Row Level Security turned on for every Supabase table? Flag any rule that lets anyone read or write everything.
- One user seeing another user's data: do the rules and code check that the logged-in user owns the data before showing or changing it? Could someone change an ID in the web address or a request to reach another user's data?
- Forms and input: does the server check what people type, not just the browser? Does the app show user text safely, or could it run code people type in (for example raw HTML)? Is there anything to stop bots from flooding a public form?
- HTTPS: does the deploy config force https? Are any images or scripts loaded over plain http?
- Leftover admin pages and debug info: admin or test pages anyone can open, error messages that show code or database details, and debug logging of private data.
- Optional live check: if you can reach the live URL, confirm read-only what you found, like https, a key showing up in the page source, or an admin page that opens. Say which findings you confirmed live.

Rate how serious each problem is:
- High: a stranger could steal data, change other people's data, or run up charges on my accounts. Fix it before sharing the link.
- Medium: a real risk, but harder to use or less harmful.
- Low: good practice. Fix it when you can.

Reply in this format:
What works: 2 or 3 things you checked that are already safe, one sentence each.
What to fix: up to 5 problems, numbered, worst first. For each one: a short title, the rating (High, Medium, or Low), the file it's in, what you found in one sentence, and what a stranger could do with it in one plain sentence.
How to improve it: 3 suggestions, most important first. Each is one short sentence (under 20 words) that starts with an action word like Move, Lock, Turn on, Remove, Hide, or Check.
Example: Lock firestore.rules so each user can only read and write their own entries.
If a secret key was ever committed or public, tell me to make a new key in that service and delete the old one, because removing it from the code isn't enough.

Then ask me which problems I want to fix (at least 2, or all of them) and wait. Before you start, warn me that fixing can use a lot of credits, so I can fix things myself instead. Fix only the problems I picked, change nothing else, add no new features, and don't redesign anything. Don't delete data, turn off login, or rewrite git history. Show me the diff and explain each change in one sentence before you commit, and wait for my OK. Then tell me how to check that the site still works for both a logged-in user and a visitor.

## Retest

When the user says they made fixes, run the check again and report what got better and what still needs work, in the same format.
