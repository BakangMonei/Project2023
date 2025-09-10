## Project2023 – Git Backfill Script

Automate a series of daily commits starting from a given date.

### Files

- `backfill.sh`: Creates one commit per day for 365 days starting at `start_date`.
- `commit.txt`: Small file updated each iteration to generate a commit.

### Prerequisites

- git installed and a Git repository initialized in this folder.
- macOS: Script uses BSD `date` flags (no extra installs needed).
- Linux: Requires GNU `date` (already available on most distros). If using macOS with GNU tools, you can install via Homebrew `coreutils` and use `gdate`.

### Configure

Edit `start_date` near the top of `backfill.sh` to your desired start date (format `YYYY-MM-DD`).

### Quick test (recommended)

Before generating many commits, shrink the loop in `backfill.sh` from `{0..364}` to `{0..2}` and run once to verify.

### Run

```bash
chmod +x /Users/bakangmonei/Desktop/Project2023/backfill.sh
cd /Users/bakangmonei/Desktop/Project2023
./backfill.sh
```

Afterwards, push if desired:

```bash
git push
```

### Notes

- The script makes 365 local commits by default. Adjust the loop range to change the number of commits.
- It does not push automatically.
- On macOS, the script is already using BSD `date` syntax. If you prefer GNU `date`, install `coreutils` (`brew install coreutils`) and prepend your PATH with `$(brew --prefix coreutils)/libexec/gnubin` before running.

### Troubleshooting

- `date: illegal option -- d`: You’re using macOS BSD `date` with GNU flags. Use this script’s version, or install GNU `date` and call `gdate`.
- `fatal: invalid date format`: Ensure `start_date` is in `YYYY-MM-DD`.
