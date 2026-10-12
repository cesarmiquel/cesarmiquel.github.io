# AGENTS.md

Instructions for working in this repository.

## Environment

- This site is a Jekyll blog that is expected to run through Docker, not a local Ruby setup.
- Do not assume `bundle`, `jekyll`, or Ruby gems are installed on the host machine.
- Prefer the existing Docker workflow for any build, serve, or validation step.

## Build and run

- Use `serve.sh` to start the site locally when appropriate.
- The project uses `docker compose`.
- For validation/builds, prefer commands like:
  - `docker compose up -d`
  - `docker compose run --rm jekyll bundle exec jekyll build`
  - `docker compose run --rm jekyll bundle exec jekyll serve --livereload --drafts --host 0.0.0.0`
- When invoking Jekyll inside the container, prefer `bundle exec jekyll ...`.

## Editing guidance

- Keep changes minimal and consistent with the current theme/style.
- Be careful when overriding remote-theme files locally; only override what is necessary.
- Do not modify or remove unrelated user files.

## Git safety rules

- Never commit anything until the user has explicitly asked or clearly approved a commit.
- Never commit files you did not touch for the current task.
- When committing, stage only the specific files changed for that task.
- Never run `git reset`, `git reset --hard`, `git checkout --`, or any other history-rewriting/revert-style destructive command unless the user has explicitly approved it.
- Do not discard or overwrite unrelated uncommitted changes.

## Communication

- If a validation step depends on Docker, mention that explicitly in updates.
- If a git action could affect existing uncommitted work, call it out before proceeding.
