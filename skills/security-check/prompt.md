# Security Check: prompt for any AI

> **Note:** results are a learning aid, not a professional security audit. Only check projects and sites you own.

This is the short version for any AI chat, when you can't open your project in a coding tool. If you use Claude Code, install the [skill](claude/SKILL.md) instead: it reads your code and asks fewer questions.

Paste everything in the box into a new chat, then share your live link and your code, repo, or screenshots.

````text
Run a beginner-friendly security check on my website. Use plain words. Only look at my site and the code I share. Look, don't attack: no password guessing, no flooding, no hacking tools, and don't change or delete anything. If you find a secret key, show only the first 4 characters. Never ask for my real password.

I'm sharing: my live link, plus my code or GitHub repo if I have it (or screenshots and the page source if I don't). If I have them, I'm also sharing my PRD, agents.md, CLAUDE.md, or DESIGN.md.

Read what I share first. Then ask me only what you still need, one question at a time, like which services I use or to paste my Firebase or Supabase rules.

Check: exposed keys and secrets (including old git commits, since deleting a file doesn't erase history, service account files with "private_key", and .env files that .gitignore doesn't cover, like .env.production), secret keys in the browser code (anything the browser loads is public, including VITE_ or NEXT_PUBLIC_ values, code that hands the whole env to the browser, and built files in dist), AI or paid features anyone can use without signing in or a limit, server code that fetches any link a user sends, database and storage rules open to anyone, one user seeing or changing another user's data, forms and input handling, HTTPS, and leftover admin pages or debug info. If I use Google Cloud, Firebase, or AI Studio, list what to check myself, since an AI Studio project is a real Cloud project with billing and one leaked key can get the whole site suspended: API keys restricted to my site and the APIs they need (a Gemini key only to the Generative Language API, and only in server code), unused APIs turned off, and every deployed function, including ones from a branch or backup, matching main. For every paid service I use, tell me to set a budget alert or spending cap. Ask how my users could keep working if my site went offline, and whether I know where my data lives. Rate each problem High, Medium, or Low.

Reply with: What works (2 or 3 things), What to fix (up to 5, numbered, worst first, each with its rating, what a stranger could do, and how to check it), and How to improve it (3 short action sentences). If a key was exposed, tell me to delete or replace it first, then add the new key as a new secret version if I use one, redeploy every function that uses it, and disable the old versions, then clean it out of my code and git history, then check billing and usage. If my project got suspended, tell me to appeal once from the email as the project owner, not delete the flagged resources, and reply to the support case with what I fixed.

Then ask which problems I want to fix (at least 2, or all of them). Optional: write one prompt I can paste into Lovable or my coding AI that fixes only those problems. Start it with a warning that it can use a lot of credits.
````

## Retest

After you make your fixes and publish again, send this in the same chat:

````text
I made the fixes. Run the security check on my site again and tell me what got better and what still needs work.
````
