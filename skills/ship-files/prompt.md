# Ship Pages and Repo Files Prompt (Beta)

> **Beta:** this is a new prompt that is still being tested. Results are a learning aid, not a professional audit or legal advice.

Two versions of the same prompt. If you set up a coding harness (Claude Code, Cursor, or Codex), use the **harness version** inside your project. It reads your code, asks you a few questions, then builds the pages and files. No harness? Use the **fallback version** in any AI. It asks the same questions, then writes everything for you to paste into Lovable, AI Studio, or your repo.

The policy pages it writes are drafts to help you learn, not legal advice.

## Harness version (run inside your project in Claude Code, Cursor, or Codex)

```
Help me get this project ready to ship with the pages and repo files a real site needs. I'm a beginner, so use plain words and explain any tech or legal term the first time you use it.

Step 1. Read first, don't change anything yet. Look through the repo and figure out what you can: what the site does, who it's for, what personal information it collects, which services and AI APIs it uses, the live link, how to run it, and which of the pages and files below already exist. Also look for my planning files: a PRD, agents.md, CLAUDE.md, and DESIGN.md. Don't create, edit, or delete any files until I've answered your questions and approved your plan.

Step 2. Ask me questions one at a time and wait for each answer. If my planning files or the repo already answer a question, tell me your guess in one sentence and let me confirm instead of asking. Only ask what's still unclear:
1. If you didn't find my planning files, ask if I have them: my PRD, agents.md, CLAUDE.md, and DESIGN.md. I can paste them or attach them. Use them to answer the questions below, and use DESIGN.md to match my site's look.
2. Who is the site for?
3. What does it do, in one sentence?
4. What personal information does it collect, for example names, emails, locations, photos, or anything people type into a form or an AI chat?
5. Which services and AI APIs does it use, for example Firebase, Supabase, Lovable Cloud, Google Analytics, Gemini, OpenAI, Claude, Stripe, or an email tool?
6. Who made it, and what name should appear on the site?
7. What public contact should the site show? Give me a choice: an email I'm OK making public, or a simple contact or feedback form. Remind me not to post a personal phone number or home address.
8. Where do my users live, roughly: US only, or anywhere including Europe?
9. Might kids under 13 use it?
10. Which license do I want? Explain the options in one plain sentence each: MIT (anyone can use and change it, as long as they keep my name on it; this is the default), Apache 2.0 (like MIT, plus extra patent protection), GPL (anyone can use it, but if they share a changed version they must share their code too), or no license (people can look but not reuse it). Default to MIT if I'm not sure.

Step 3. Show me a short plan: each page and file you'll create or update, one line each, and wait for my OK. Warn me that building all of this can use a lot of credits, so I can pick fewer items if I want.

Step 4. Once I say OK, build only these.

Site pages:
- Privacy policy: what the site collects, why, where it's stored, which outside services get it (including AI APIs), how long it's kept, and how users can see, export, or delete their data. Add the GDPR or CCPA basics only if they fit where my users live, and a line about kids if kids might use it.
- Terms of use: what the site is for, what users shouldn't do, that it's provided as is, and how to contact me.
- About: who made it, who it's for, and what it does, in a friendly voice.
- Contact or feedback: the email or form I chose.
- A friendly 404 page: a short, kind message and a button back to the home page.
- A footer on every page linking to all of the pages above.

Repo files:
- README.md: what the project is, the live link, the tools it uses, and simple steps to run it on my computer.
- .gitignore: make sure .env files, keys, and other secrets are ignored. Then check whether any secret is already committed, in the current files or in past commits. If you find one, show me only the first 4 characters, tell me which service it's for, and tell me to make a new key and delete the old one. Don't rewrite git history or force push without asking me first.
- .env.example: the names of the keys the app needs, with empty or placeholder values. Never real values.
- LICENSE: the license I picked, with my name and the current year.
- SECURITY.md (optional, ask me): one short paragraph on how to report a security problem using my public contact.

Nice extras (ask me before adding each one):
- A favicon.
- A social share image, so the link looks good when shared.
- A clear page title and a one-sentence meta description on each page.

Rules for the policy pages: describe only what the site really does, based on the code and my answers. Never invent features, services, or promises. Use [brackets] for anything I need to fill in. Put this at the top of the privacy policy and terms: "Draft. Not legal advice. Review before relying on it."

Rules for everything: change nothing else, add no new features, and don't redesign anything. Match the site's existing fonts, colors, and style. Check that the new pages and footer look right on both phone and desktop.

Step 5. Before you commit, show me what you changed, file by file, in plain words. Wait for my OK, then commit with a clear message. Finish with a short list of every [bracket] I still need to fill in and how to test the new pages on the live site.
```

## Fallback version (paste into any AI)

```
Help me get my website ready to ship with the pages and repo files a real site needs. I'm a beginner, so use plain words and explain any tech or legal term the first time you use it.

Don't write anything yet. First, ask me questions one at a time and wait for each answer. If my planning files, live site, or code already answer a question, tell me your guess in one sentence and let me confirm instead of asking. Only ask what's still unclear.
1. Ask for my planning files if I have them: my PRD, agents.md, CLAUDE.md, and DESIGN.md. I can paste them or attach them. Use them to answer the questions below, and use DESIGN.md to match my site's look.
2. Ask for my live site link, and whether I can paste my code or share my GitHub repo (optional, but it helps you get the details right).
3. Who is the site for?
4. What does it do, in one sentence?
5. What personal information does it collect, for example names, emails, locations, photos, or anything people type into a form or an AI chat?
6. Which services and AI APIs does it use, for example Firebase, Supabase, Lovable Cloud, Google Analytics, Gemini, OpenAI, Claude, Stripe, or an email tool? If I don't know, tell me where to look.
7. Who made it, and what name should appear on the site?
8. What public contact should the site show? Give me a choice: an email I'm OK making public, or a simple contact or feedback form. Remind me not to post a personal phone number or home address.
9. Where do my users live, roughly: US only, or anywhere including Europe?
10. Might kids under 13 use it?
11. Which license do I want? Explain the options in one plain sentence each: MIT (anyone can use and change it, as long as they keep my name on it; this is the default), Apache 2.0 (like MIT, plus extra patent protection), GPL (anyone can use it, but if they share a changed version they must share their code too), or no license (people can look but not reuse it). Default to MIT if I'm not sure.

Then show me a short plan, one line per page or file, and wait for my OK.

Once I say OK, write each of these in its own code block, with a one-line note above it saying where it goes:
- Pages: privacy policy, terms of use, about, contact or feedback, and a friendly 404 page with a button back home. Plus a footer that links to all of them.
- Repo files (only if I have a repo): README.md (what it is, the live link, how to run it), .gitignore (keeps .env files and keys out), .env.example (key names only, never real values), LICENSE (the one I picked, with my name and the year), and an optional SECURITY.md (how to report a problem using my public contact).
- Nice extras: a page title and one-sentence meta description for each page, and a short description I can use to make a favicon and a social share image.

Rules for the policy pages: describe only what the site really does, based on what I told you. Never invent features, services, or promises. Use [brackets] for anything I need to fill in. Put this at the top of the privacy policy and terms: "Draft. Not legal advice. Review before relying on it."

Then tell me how to check my repo for secret keys that were already committed, and what to do if I find one (make a new key and delete the old one).

Optional: prompt for your AI agent. Last, write one code block I can paste into Lovable, AI Studio, or my coding AI to add the pages and footer to my site. Start it by warning me it can use a lot of credits, so I can add the pages myself instead. It must add only these pages, the footer, and the extras I approved, change nothing else, add no new features, and not redesign anything. Tell it to match the site's existing style and check phone and desktop.

Finish with a short list of every [bracket] I still need to fill in.
```

## Check your work

After the pages are live, run a privacy check (see the privacy-check skill). It checks that your new pages match what your code really does.
