git clone https://github.com/ian-knight-uofa/git-practice-04.git
cd git-practice-04

# Identify all branches
git branch -a

# Merge branches starting with "ready" into "main"
git checkout main
git merge ready*

# Resolve any merge conflicts (if any)

# Delete branches starting with "ready"
git branch -d $(git branch -r | grep origin/ready | sed 's/origin\///')

# Update branches starting with "update" from "main"
git checkout main
git pull
git branch -r --list 'origin/update*' | grep -v '->' | sed 's/origin\///' | xargs -I {} sh -c 'git checkout {}; git merge origin/main'

# Push the changes to the remote repository
git push origin --all
