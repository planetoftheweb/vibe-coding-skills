---
name: security-check
description: "Beta. Beginner-friendly, non-invasive security check of your own site: exposed keys, database rules, user data leaks, forms, HTTPS. Use before sharing a site."
license: CC-BY-4.0
---

# Security Check (Beta)

> **Beta:** this skill is new and still being tested. Results are a learning aid, not a professional security audit.

Run a beginner-friendly security check on the user's website, which was likely built with AI tools. Use plain words and explain any tech term the first time you use it. If the site has no login or database, run the check anyway: it still covers exposed keys, HTTPS, and leftover debug info.

## Safety rules (follow the whole time)

- Only test the site at the link the user gives you, plus the repo or code they share. Never test, scan, or probe any other site, including the services the site uses. Only look at the parts of those services that belong to this project.
- Look, don't attack. No password guessing, no flooding the site with requests, no hacking tools, and nothing meant to crash or slow it down.
- Make no destructive changes. Don't delete or edit anything except test entries you create. If a test could delete or change real data, describe it and let the user decide.
- If you find a secret key or password, show only the first 4 characters so it doesn't get copied further.
- Never ask for the user's real password. Use made-up test accounts.

## Step 1: Gather context

Ask one question at a time and wait for each answer. If planning files or code already answer a question, state your guess in one sentence and let the user confirm. Only ask what's still unclear.

1. Ask for planning files if they have them: a PRD, AGENTS.md, CLAUDE.md, or DESIGN.md.
2. Ask for the link to the live site.
3. Ask what the site stores, if anything: for example form entries, profiles, scores, messages, or uploaded files.
4. Ask if it has a login, and what a logged-in person can see or do that a visitor can't.
5. Ask which services it uses, for example Firebase, Supabase, Lovable Cloud, Google AI Studio or the Gemini API, OpenAI, or Stripe. If they don't know, tell them where to look.
6. Ask if they have a GitHub repo or can paste the code. This is optional, but it helps find hidden keys.

If you can read the project files directly (for example in a coding tool), read them first and ask only what's left. If you can't open or click around the site, say so, then ask for one of these, in this order:
- Screenshots of each page, including what a logged-in user sees.
- The page source: right-click the page, choose View Page Source, select all, copy, and paste it.
- The code, pasted from the builder's code view or shared from a GitHub repo.

## Step 2: Check

Say what you looked at for each item.

- **Exposed keys and secrets:** Are any secret keys, passwords, or tokens visible in the page source, the files the browser loads, or the repo, including .env files and old commits? Some keys are meant to be public, like a Firebase web config or a Supabase anon (public) key. Those are only safe if the database rules are locked down, so say which kind each key is. Secret keys, like a Supabase service role key, an OpenAI or Gemini API key, or a Stripe secret key, must never be in the browser or a public repo.
- **Database and storage rules:** Can someone who isn't logged in read, add, change, or delete data or uploaded files? For Firebase, ask for the Firestore and Storage rules. For Supabase, ask whether Row Level Security (RLS) is on for every table and ask for the policies. Flag any rule that lets anyone read or write everything.
- **One user seeing another user's data:** Sign up as test user A and add an entry. Then sign up as test user B. Can B see, change, or delete A's entry through the normal pages, or by changing an ID or number in the web address? Only use the two test accounts you made.
- **Forms and input:** Do forms check what people type, like required fields and length limits, and does the server check too, not just the browser? If you type harmless test text like `<b>hello</b>`, does it show as plain text, or turn bold? Bold means the site might run code people type in. Is there anything to stop bots from flooding a public form?
- **HTTPS:** Does the site load with https and a lock icon? Does http redirect to https? Does any image or script load over plain http?
- **Leftover admin pages and debug info:** Are there admin pages, test pages, or dashboards anyone can open? Do error messages show code, file paths, or database details? Is there debug info or private data in the browser console?

Rate each problem:
- **High:** a stranger could steal data, change other people's data, or run up charges on the user's accounts. Fix before sharing the link.
- **Medium:** a real risk, but harder to use or less harmful.
- **Low:** good practice. Fix when possible.

## Step 3: Report

**What works:** 2 or 3 things you checked that are already safe, one sentence each.

**What to fix:** up to 5 problems, numbered, worst first. For each: a short title, the rating, what you found in one sentence, and what a stranger could do with it in one plain sentence.

**How to improve it:** 3 suggestions, most important first. Each is one short sentence (under 20 words) starting with an action word like Move, Lock, Turn on, Remove, Hide, or Check. Name the exact spot when you can.
Example: Lock your Firestore rules so each user can only read and write their own entries.

If a secret key was exposed, tell the user to make a new key in that service and delete the old one, because hiding it in the code isn't enough once it has been public.

Then ask which problems the user wants to fix (at least 2, or all of them) and wait.

## Step 4: Optional fix prompt

Once the user picks, offer one code block they can paste into their AI builder or coding tool. Start it with a warning that it can use a lot of credits, so they can fix things themselves instead. It must fix only the chosen problems, change nothing else, add no new features, and not redesign anything. It must not delete any data or turn off login. Tell it to explain each change in one sentence and to check that the site still works for both a logged-in user and a visitor.

## Retest

When the user says they made fixes, run the check again and report what got better and what still needs work.
