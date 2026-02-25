# input-variables-example

Small example repository containing a minimal Python file for experimenting with variable naming and comments.

Files:

- `input1.py` — example file with commented variable names.
- `.gitignore` — Python ignores.
- `push_to_github.ps1` — PowerShell helper to create and push a repo (uses GitHub CLI if available).

Usage

1. Initialize git and commit locally:

```powershell
git init
git add .
git commit -m "Initial commit"
git branch -M main
```

2. Create a GitHub repository and push (see `push_to_github.ps1`), or run one of the following:

With `gh` installed:

```powershell
gh repo create <username>/<repo> --public --source . --remote origin --push
```

Manual remote creation:

```powershell
git remote add origin https://github.com/<username>/<repo>.git
git push -u origin main
```
