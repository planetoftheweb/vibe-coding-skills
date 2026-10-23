# Vibe Coding Skills

Five ready-to-use AI skills for people who build apps and websites with AI ("vibe coding"). Each one works in Claude, ChatGPT, or any other AI, and is written for beginners.

## What is a skill?

A skill is a saved set of instructions that teaches an AI how to do one job well, the same way every time. Instead of pasting a long prompt into every chat, you install the skill once. In Claude, the AI loads a skill automatically when your request matches what the skill is for, or you can ask for it by name. In ChatGPT, you get the same effect by pasting the instructions into a ChatGPT Project.

Every skill in this repo comes in three forms:

| Form | File | Where it works |
| --- | --- | --- |
| Claude skill | `skills/<name>/claude/SKILL.md` and `dist/<name>.zip` | Claude.ai and Claude Code |
| ChatGPT Projects instructions | `skills/<name>/chatgpt.md` | A ChatGPT Project |
| Plain prompt | `skills/<name>/prompt.md` | Any AI chat (Claude, ChatGPT, Gemini, and others) |

## The skills

| Skill | What it does | Download for Claude.ai |
| --- | --- | --- |
| [user-test](skills/user-test/) | Tests your live site as a first-time visitor on desktop and phone, then tells you what works, what to fix, and how to improve it. | [user-test.zip](dist/user-test.zip) |
| [prd-architect](skills/prd-architect/) | Interviews you one question at a time and co-writes a PRD (a short product plan) you can hand to any AI coding tool. | [prd-architect.zip](dist/prd-architect.zip) |
| [security-check](skills/security-check/) | A beginner-friendly, non-invasive security check of your own site: exposed keys (including git history and the browser bundle), AI functions anyone can call, database rules, one user seeing another's data, forms, HTTPS, and Google Cloud key and billing settings. | [security-check.zip](dist/security-check.zip) |
| [privacy-check](skills/privacy-check/) | An educational privacy and data check: privacy policy, consent, what you collect, user control, and GDPR and CCPA basics. Not legal advice. | [privacy-check.zip](dist/privacy-check.zip) |
| [ship-files](skills/ship-files/) | Adds the pages and repo files a real site needs: privacy, terms, about, contact, 404 page, footer, README, .gitignore, .env.example, and LICENSE. | [ship-files.zip](dist/ship-files.zip) |

### Early and evolving

These skills are early and still evolving, so expect changes. Feedback is welcome: open an issue on this repo.

Safety first: only run the website checks on sites you own, and treat the results as a learning aid. The security check is non-invasive and is not a professional security audit. The privacy check, and any privacy policy or terms the ship-files skill writes, are not legal advice.

## Class slides

PDF copies of the slide decks from TECH 36, Vibe Coding (Stanford Continuing Studies), are in [slides/](slides/). Each week's assignment steps and copy-paste prompts for the course live in the companion [TECH 36 Vibe Coding Resources](https://github.com/planetoftheweb/tech36-vibe-coding-resources) repo.

| Part | Slides |
| --- | --- |
| 1 | [Introduction to Vibe Coding](slides/part-01-introduction-to-vibe-coding.pdf) |
| 2 | [From Dashboard to Product](slides/part-02-from-dashboard-to-product.pdf) |
| 3 | [The App Development Spectrum](slides/part-03-the-app-development-spectrum.pdf) |
| 4 | [The AI Powered App](slides/part-04-the-ai-powered-app.pdf) |
| 5 | [Professional Agentic Harness](slides/part-05-professional-agentic-harness.pdf) |

## Install and use

### Claude.ai (web, desktop, and mobile apps)

Official guides: [Use skills in Claude](https://support.claude.com/en/articles/12512180-using-skills-in-claude) and [How to create custom skills](https://support.claude.com/en/articles/12512198-how-to-create-custom-skills).

1. **Download the zip** for the skill you want from the table above (for example `dist/user-test.zip`). On GitHub, open the file and choose the download button. Don't unzip it.
2. **Turn on code execution.** Skills need it. On Free, Pro, and Max plans, go to **Settings > Capabilities** and make sure **Code execution and file creation** is on. On Team and Enterprise plans, an organization owner may need to turn on skills first.
3. **Open your skills.** Go to **Customize > Skills**.
4. **Upload the skill.** Click the **+** button, then **+ Create skill**, then **Upload a skill**, and choose the zip.
5. **Turn it on.** Make sure the skill's toggle is on in your skills list.
6. **Use it.** Start a new chat and ask for what you want, for example "Run a user test on my website." Claude loads the skill when your request matches. To be sure, name it: "Use my user-test skill."

Menus can change. If something doesn't match, follow the official guides linked above.

### Claude Code

Official guide: [Extend Claude with skills](https://code.claude.com/docs/en/skills).

1. **Make a folder** for the skill in your personal skills folder (this works in all your projects):

   ```bash
   mkdir -p ~/.claude/skills/user-test
   ```

2. **Copy the skill in.** From this repo, copy the contents of `skills/user-test/claude/` into that folder, so you end up with `~/.claude/skills/user-test/SKILL.md`:

   ```bash
   cp -R skills/user-test/claude/. ~/.claude/skills/user-test/
   ```

   To share a skill with everyone working in one project, put it in that project's `.claude/skills/<name>/` folder instead.

3. **Use it.** Start Claude Code with `claude`. Ask for what you want ("check the privacy of this project"), or run the skill directly by typing a slash and its name, like `/privacy-check`.

Repeat for each skill you want, changing the name.

### ChatGPT Projects

Official guide: [Projects in ChatGPT](https://help.openai.com/en/articles/10169521-projects-in-chatgpt).

1. In the ChatGPT sidebar, select **New project** and give it a name, like "User Test."
2. Open the project, select the more options menu (**•••**), then **Project settings**.
3. Open the skill's `chatgpt.md` file in this repo, copy the text inside the box, and paste it into the project instructions. Save.
4. Start a chat **inside that project** and ask for what you want. The instructions only apply to chats in that project.

Make one project per skill so each set of instructions stays separate.

### Any other AI

Open the skill's `prompt.md`, copy the text in the box, and paste it at the start of a new chat. Then answer its questions.

## Tips for beginners

- **Use the live link.** For user-test, security-check, and privacy-check, give the AI your published URL, not a preview link.
- **Never paste a real password or secret key** into any AI chat. Use made-up test accounts.
- **AI tools that can open websites work best** for the website checks. If yours can't, the skill will ask for screenshots or your code instead.
- **Fixing can cost credits.** The skills can write a fix prompt for your AI builder, but you can always fix things yourself.

## Rebuilding the zips

If you change a skill, rebuild the Claude.ai zips:

```bash
./scripts/build-zips.sh
```

Each zip in `dist/` holds one folder named after the skill, with its `SKILL.md` inside, which is the layout Claude.ai expects.

## License

- **Skills, prompts, and docs** are licensed under [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/). The full legal text is in [LICENSE](LICENSE). You can share and adapt them for any purpose, including commercially, as long as you give credit.
- **Scripts** (the `scripts/` folder) are licensed under the MIT License. See [LICENSE-CODE](LICENSE-CODE).
- **How to give credit:** "Ray Villalobos"
