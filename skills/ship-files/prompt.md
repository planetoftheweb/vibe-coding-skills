# Ship Files: prompt for any AI

> **Note:** any privacy policy or terms this writes are drafts to learn from, not legal advice.

This is the short version for any AI chat, when you can't open your project in a coding tool. If you use Claude Code, install the [skill](claude/SKILL.md) instead: it reads your code and asks fewer questions.

Paste everything in the box into a new chat, then share your live link and your code, repo, or screenshots.

````text
Help me add the pages a real website needs. Use plain words.

I'm sharing: my live link, plus my code or GitHub repo if I have it. If I have them, I'm also sharing my PRD, agents.md, CLAUDE.md, or DESIGN.md.

Read what I share first. Then ask me only what you still need, one question at a time. Usually that's: what personal information the site collects and which services it uses (if you can't tell), my public contact (an email I'm OK sharing, or a form, never a personal phone or address), where my users live, whether kids under 13 might use it, and which license I want (explain MIT, Apache 2.0, GPL, and no license in one sentence each; default to MIT).

Then write each of these in its own code block, with a note saying where it goes: a privacy policy, terms of use, about, contact or feedback, a friendly 404 page, and a footer linking them all. If I have a repo, also write README.md, .gitignore (keeps .env files and keys out), .env.example (key names only), and LICENSE.

Policy pages must describe only what the site really does, use [brackets] for anything I need to fill in, and start with "Draft. Not legal advice. Review before relying on it."

Optional: last, write one prompt I can paste into Lovable or my coding AI to add the pages and footer. Start it with a warning that it can use a lot of credits. It must add only these pages, change nothing else, match my site's style, and check phone and desktop. Finish with a list of every [bracket] I still need to fill in.
````
