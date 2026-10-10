# Security Test Prompt

> **Note:** results are a learning aid, not a professional audit or legal advice.

Paste the whole block into an AI. One that can open websites works best (Claude in Chrome or ChatGPT agent mode). If yours can't, the prompt tells you what to give it instead. No login or database? Run it anyway. It still checks for exposed keys, HTTPS, and leftover debug info.

```
Run a beginner-friendly security check on my website. I built it with AI tools and I'm a beginner, so use plain words and explain any tech term the first time you use it.

Follow these safety rules the whole time:
- Only test my site at the link I give you, plus the repo or code I share. Never test, scan, or probe any other site, including the services my site uses. Only look at the parts of those services that belong to my project.
- Look, don't attack. No password guessing, no flooding the site with requests, no hacking tools, and nothing meant to crash or slow it down.
- Make no destructive changes. Don't delete or edit anything except test entries you create during this check. If a test could delete or change real data, describe it and let me decide instead.
- If you find a secret key or password, show only the first 4 characters so it doesn't get copied further.
- Never ask for my real password. Use made-up test accounts.

Ask me questions one at a time and wait for each answer. If my planning files or code already answer a question, tell me your guess in one sentence and let me confirm instead of asking. Only ask what's still unclear.
1. Ask for my planning files if I have them: my PRD, agents.md, CLAUDE.md, and DESIGN.md. I can paste them or attach them. Use them to answer the questions below.
2. Ask for the link to my live site.
3. Ask what my site stores, if anything: for example form entries, profiles, scores, messages, or uploaded files.
4. Ask if it has a login, and what a logged-in person can see or do that a visitor can't.
5. Ask which services it uses, for example Firebase, Supabase, Lovable Cloud, Google AI Studio or the Gemini API, OpenAI, or Stripe. If I don't know, tell me where to look.
6. Ask if I have a GitHub repo or can paste my code. This is optional, but it helps you find hidden keys.

If you can't open or click around the site, tell me, then ask me for one of these, in this order:
- Screenshots of each page, including what a logged-in user sees.
- The page source: I right-click the page, choose View Page Source, select all, copy, and paste it here.
- The code: I paste it from my builder's code view (Lovable, AI Studio, or similar) or share my GitHub repo.

Then check these, and tell me what you looked at for each one:
- Exposed keys and secrets: Are any secret keys, passwords, or tokens visible in the page source, the files the browser loads, or my repo, including .env files and old commits? Some keys are meant to be public, like a Firebase web config or a Supabase anon (public) key. Those are only safe if the database rules below are locked down, so tell me which kind each key is. Secret keys, like a Supabase service role key, an OpenAI or Gemini API key, or a Stripe secret key, must never be in the browser or a public repo.
- Database and storage rules: Can someone who isn't logged in read, add, change, or delete data or uploaded files? For Firebase, ask me to paste my Firestore and Storage rules. For Supabase, ask me whether Row Level Security (RLS) is turned on for every table and to paste the policies. Flag any rule that lets anyone read or write everything.
- One user seeing another user's data: Sign up as test user A and add an entry. Then sign up as test user B. Can B see, change, or delete A's entry through the normal pages, or by changing an ID or number in the web address? Only use the two test accounts you made.
- Forms and input: Do forms check what people type, like required fields and length limits, and does the server check too, not just the browser? If you type harmless test text like <b>hello</b> into a form, does it show up as plain text, or does it turn bold? Bold means the site might run code that people type in. Is there anything to stop bots from flooding a public form?
- HTTPS: Does the site load with https and a lock icon? Does http send you to https? Does any image or script load over plain http?
- Leftover admin pages and debug info: Are there admin pages, test pages, or dashboards anyone can open? Do error messages show code, file paths, or database details? Is there debug info or private data in the browser console?

Rate how serious each problem is:
- High: a stranger could steal data, change other people's data, or run up charges on my accounts. Fix it before sharing the link.
- Medium: a real risk, but harder to use or less harmful.
- Low: good practice. Fix it when you can.

Reply in this format:
What works: 2 or 3 things you checked that are already safe, one sentence each.
What to fix: up to 5 problems, numbered, worst first. For each one: a short title, the rating (High, Medium, or Low), what you found in one sentence, and what a stranger could do with it in one plain sentence.
How to improve it: 3 suggestions, most important first. Each is one short sentence (under 20 words) that starts with an action word like Move, Lock, Turn on, Remove, Hide, or Check. Name the exact spot when you can.
Example: Lock your Firestore rules so each user can only read and write their own entries.
If a secret key was exposed, tell me to make a new key in that service and delete the old one, because hiding it in the code isn't enough once it has been public.

Then ask me which problems I want to fix (at least 2, or all of them) and wait for my answer.
Optional: prompt for your AI agent. Once I pick, write one code block I can paste into Lovable, AI Studio, or my coding AI. Start it by warning me it can use a lot of credits, so I can fix things myself instead. It must fix only the problems I picked, change nothing else, add no new features, and not redesign anything. It must not delete any data or turn off login. Tell it to explain each change in one sentence and to check that the site still works for both a logged-in user and a visitor.
```

## Retest

After you make your fixes and publish again, send this in the same chat:

```
I made the fixes. Run the security check on my site again and tell me what got better and what still needs work.
```
