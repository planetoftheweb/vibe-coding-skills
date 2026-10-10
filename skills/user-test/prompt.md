# User Test Prompt

Paste the whole block into an AI. One that can open websites works best (Claude in Chrome or ChatGPT agent mode). If yours can't, the prompt tells you what to give it instead.

```
Run a user test on my website as a first-time visitor who has never seen it. I'm a beginner, so use plain words.

Ask me questions one at a time and wait for each answer:
1. Start by asking for the link to my live site.
2. Open the site and figure out who it's for and the one main thing a visitor should do there. Only ask me if you can't tell. If you guess, tell me your guess and let me confirm.
3. Ask me for my planning files if I have them: my PRD, agents.md, and DESIGN.md. I can paste them or attach them. Use them to check that the site keeps the promises they make: the audience, the main features, and the look.
4. Then act as that person, with their goals and level of experience, for the rest of the test.

If you can't open or click around the site, tell me, then ask me for one of these, in this order:
- Screenshots of the home page and each step of the main task, on desktop and on a phone.
- The page text: I select all the text on each page, copy it, and paste it here.
- The code: I paste it from my builder's code view or my GitHub repo.

Then test it on desktop and at phone size (about 390 pixels wide). Try the main thing from start to finish. If you need an account, sign up with a made-up email. If a login stops you, tell me and test what you can reach.

Check these things:
- In 10 seconds, can you tell who it's for and what you get out of it? Is it a promise or just a list of features?
- On each screen, is it clear what to do next, without too many choices competing for attention?
- Does it show the product working, or explain it with long paragraphs? Are lines of text short enough to read comfortably?
- Can you try something useful before being asked to sign up? How many steps does it take?
- Does the form start with sensible defaults, save, show a confirmation, and show your entry afterward? Do empty pages tell you how to get started?
- Do sign up, log in, and log out work? Is there something only logged-in users can see? Do delete or cancel buttons say what you'll lose?
- Does the site match my planning files? Note any promised feature that is missing or works differently, and any place the fonts, colors, or tone drift from DESIGN.md.
- Do all links, buttons, and menus work? Any errors, blank pages, or leftover placeholder text?
- Does every page use the same fonts, colors, and button styles? Does spacing group related things, and are long lists broken into groups or tabs?
- Is the most important thing on each page the most noticeable? Is all text easy to read against its background?
- On a phone, is anything cut off, scrolling sideways, or too small to tap? Are buttons big and close to what they control?

Reply in this format:
What works: 2 or 3 things, one sentence each.
What to fix: up to 5 problems, numbered, most serious first, one sentence each.
How to improve it: 3 suggestions, most important first. Each is one short sentence (under 20 words) that starts with an action word like Name, Move, Cut, Add, Rename, or Show. For new wording, name the spot, then put the new words in quotes after a colon. Write it like real marketing copy: a promise to the visitor, not a description of the feature. Keep my voice and change a few words, not the whole thing.
Example: Name your user in the subhead: "For first-time founders who want to build something truly new."

Then ask me which problems I want to fix (at least 2, or all of them) and wait for my answer.
Optional: prompt for your AI agent. Once I pick, write one code block I can paste into Lovable or my coding AI. Start it by warning me it can use a lot of credits, so I can fix things myself instead. It must fix only the problems I picked, change nothing else, add no new features, and not redesign anything. Tell it to check phone and desktop.
```

## Retest

After you make your fixes and publish again, send this in the same chat:

```
I made the changes. Test the site again and tell me what got better and what still needs work.
```

---

Adapted from the public gist [c277a17d](https://gist.github.com/planetoftheweb/c277a17dacf5e45687a328a794d43a1e).
