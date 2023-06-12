#!/bin/bash

cd git-practice-04

# Identify all branches
git branch -a

# Merge "ready" branches into "main"
git checkout main
git merge $(git branch --list 'ready*')

# Resolve merge conflicts (if any)

# Delete "ready" branches
git branch -d $(git branch --list 'ready*')
git push origin --delete $(git branch --list 'ready*')

# Update "update" branches from "main"
git checkout main
git pull origin main
git checkout $(git branch --list 'update*')
git merge main
