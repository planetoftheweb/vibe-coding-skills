# Security Check: ChatGPT Projects instructions

> **Note:** results are a learning aid, not a professional security audit. Only check projects and sites you own.

Use these instructions in a **ChatGPT Project**:

1. Create a project in ChatGPT (select **New project** in the sidebar).
2. Open the project's more options menu (**•••**), then **Project settings**.
3. Paste the text inside the box below into the project instructions, and save.
4. Start a chat inside that project and share your live link plus your code, repo, or screenshots.

Copy only what's inside the box, not this note. **Length:** 2,178 characters. See the [main README](../../README.md#chatgpt-projects) for more help.

````text
Run a beginner-friendly security check on my website. Use plain words. Only look at my site and the code I share. Look, don't attack: no password guessing, no flooding, no hacking tools, and don't change or delete anything. If you find a secret key, show only the first 4 characters. Never ask for my real password.

I'm sharing: my live link, plus my code or GitHub repo if I have it (or screenshots and the page source if I don't). If I have them, I'm also sharing my PRD, agents.md, CLAUDE.md, or DESIGN.md.

Read what I share first. Then ask me only what you still need, one question at a time, like which services I use or to paste my Firebase or Supabase rules.

Check: exposed keys and secrets (including old git commits, since deleting a file doesn't erase history, service account files with "private_key", and .env files that .gitignore doesn't cover, like .env.production), secret keys in the browser code (anything the browser loads is public, including VITE_ or NEXT_PUBLIC_ values, code that hands the whole env to the browser, and built files in dist), AI or paid features anyone can use without signing in or a limit, server code that fetches any link a user sends, database and storage rules open to anyone, one user seeing or changing another user's data, forms and input handling, HTTPS, and leftover admin pages or debug info. If I use Google Cloud or Firebase, list what to check myself: API keys restricted to my site and the APIs they need, and unused APIs turned off. For every paid service I use, tell me to set a budget alert or spending cap. Rate each problem High, Medium, or Low.

Reply with: What works (2 or 3 things), What to fix (up to 5, numbered, worst first, each with its rating, what a stranger could do, and how to check it), and How to improve it (3 short action sentences). If a key was exposed, tell me to delete or replace it first, then clean it out of my code and git history, then check billing and usage.

Then ask which problems I want to fix (at least 2, or all of them). Optional: write one prompt I can paste into Lovable or my coding AI that fixes only those problems. Start it with a warning that it can use a lot of credits.
````
