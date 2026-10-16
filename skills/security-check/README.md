# Security Check

> **Note:** results are a learning aid, not a professional audit or legal advice.

Beginner-friendly, non-invasive security check of your own site: exposed keys (including git history and the browser bundle), AI functions anyone can call, database rules, user data leaks, forms, HTTPS, and Google Cloud key and billing settings. Use before sharing a site.

**Best in a coding tool.** The main version is the Claude skill: run it in Claude Code (or a similar coding tool) with your project open, and it reads your code, rules, and planning files itself, so it asks only a question or two. `chatgpt.md` and `prompt.md` are a short fallback for any AI chat, where you share your live link and code or screenshots.

| File | Use it with |
| --- | --- |
| [claude/SKILL.md](claude/SKILL.md) | Claude Code (copy the `claude` folder to `~/.claude/skills/security-check/`) |
| [../../dist/security-check.zip](../../dist/security-check.zip) | Claude.ai (upload in your skills settings) |
| [chatgpt.md](chatgpt.md) | A ChatGPT Project |
| [prompt.md](prompt.md) | Any AI, pasted into a chat |

## Lessons from a real key leak

A real Google Cloud project was suspended after leaked keys let strangers run their own jobs on it. These checks come from that incident. The prompt covers each one. Here's what each means in plain words.

**Keys and secrets**

- **Keys in git history.** *Why it matters:* deleting a file doesn't remove it from git. Every old commit still has it, and bots scan public repos for keys within minutes. *How to check:* run `git log --all -- .env` (use any file name) to see every commit that ever touched it, or scan everything with [gitleaks](https://github.com/gitleaks/gitleaks): `gitleaks detect --redact`.
- **Service account files.** *Why it matters:* a JSON file with `private_key` in it is a master key to your cloud project. It never belongs in a repo, even a private one. *How to check:* search your project and its history for `private_key`.
- **.env files git can still see.** *Why it matters:* a `.gitignore` that only lists `.env` or `*.local` misses files like `.env.production`, and some starter templates don't ignore `.env` at all. Once a file with a key is committed, it stays in history. In a public repo, everyone can see every tracked file. *How to check:* make sure `.gitignore` has `.env*` and `!.env.example`, then run `git check-ignore -v .env .env.production` and `git ls-files | grep -i env`.
- **Server keys in the browser.** *Why it matters:* anything the browser downloads is public. Vite and Next.js copy env values that start with `VITE_` or `NEXT_PUBLIC_` into your site's code, and so does a Vite config that uses `define` to insert `process.env` values, or code that passes the whole `import.meta.env` object to the browser. A Gemini or OpenAI key there is free for anyone to use. *How to check:* open your live site, view the page source or your browser's developer tools, and search the JavaScript for the first few characters of your key. If you build locally, also search the `dist` folder for key names like `GEMINI_API_KEY`. Secret keys belong in server code only.

**Your server code**

- **AI features anyone can call.** *Why it matters:* a function that calls an AI model with no sign-in, no rate limit (a cap on how often one person can call it) and no Firebase App Check lets anyone who finds it run up your bill. *How to check:* ask your coding tool to list every function and API route and say whether each one checks sign-in and limits use.
- **Open file proxies and SSRF.** *Why it matters:* if your server fetches any web address a user gives it, strangers can use your server, and your bill, to download things, or reach private addresses only your server can see. This is called SSRF (server-side request forgery). *How to check:* look for code that takes a link from the user and fetches it. It should only allow a short list of sites you chose.

**Google Cloud settings** (in the [Google Cloud console](https://console.cloud.google.com))

- **Unrestricted Google API keys.** *Why it matters:* a key with no restrictions works from any website and for every API turned on in your project. Keys made in Google AI Studio have often come unrestricted by default. Newer AI Studio keys are limited to the Gemini API, which is still enough to run up a bill. *How to check:* in **APIs & Services > Credentials**, give each key an application restriction (your site's address, for a browser key) and an API restriction (only the APIs it needs). In AI Studio, look for keys labeled **Unrestricted**.
- **Unused APIs left on.** *Why it matters:* every API that's turned on is one more thing a leaked key can use. *How to check:* in **APIs & Services > Enabled APIs & services**, turn off anything you don't use.
- **No budget alert.** *Why it matters:* an alert emails you when spending passes an amount you pick, so you hear about a surprise bill in hours, not at the end of the month. It warns you; it doesn't stop charges. *How to check:* in **Billing > Budgets & alerts**, create a budget with an alert. Your other paid services (Supabase, OpenAI, Anthropic, Stripe, email services) have their own usage limits or alerts. Set those too.

**What the AI can't see.** The prompt only sees the project you open. It can't see your Google Cloud console, other services' dashboards, or the history of your other repos. Treat the Google Cloud settings above as a checklist you do yourself, and run `gitleaks detect --redact` in each of your other repos.

**If a key leaks, in this order**

1. **Delete or rotate the key first.** Make a new key in that service, update your app, and delete the old one. This is the only step that stops strangers from using it.
2. **Then clean up git.** Remove the key from your code and your git history.
3. **Then check billing and usage** for anything you don't recognize.

[Back to the main README](../../README.md)
