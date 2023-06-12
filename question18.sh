git clone https://github.com/ian-knight-uofa/git-practice-04.git

cd git-practice-04
git branch -a

git checkout main
git merge $(git branch --list 'ready*')

git branch -d $(git branch --list 'ready*')

git checkout main
git pull origin main
git checkout $(git branch --list 'update*')
git merge main

