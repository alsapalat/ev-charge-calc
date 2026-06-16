#!/usr/bin/env bash
# Run this from your Mac terminal, inside the project folder:
#   cd "/Users/adamleeapalat/Documents/Claude/Projects/EV Charge Time Calculator"
#   bash setup-git.sh
set -e

REMOTE="git@github.com:alsapalat/ev-charge-calc.git"

# Start from a clean git state (removes any partial repo from the sandbox)
rm -rf .git

git init
git branch -M main
git add -A
git commit -m "Initial commit: EV charge calculator + GitHub Pages workflow"
git remote add origin "$REMOTE"
git push -u origin main

echo
echo "Pushed to $REMOTE"
echo "Next: GitHub repo -> Settings -> Pages -> Source: 'GitHub Actions'."
echo "The deploy workflow runs on every push to main."
