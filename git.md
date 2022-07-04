# Git cheatsheet

## Check your gitconfig file

```bash
nano ~/.gitconfig
```

## Check your aliases

```bash
git config --get-regexp alias
```

## The way to squash all your commits is to reset the index to master

```bash
git checkout yourBranch
# git reset $(git merge-base master $(git branch --show-current))
git reset $(git merge-base master $(git rev-parse --abbrev-ref HEAD)) # That automatically uses the branch you are currently on. And if you use that, you can also use an alias, as the command doesn't rely on the branch name.
git add -A
git commit -m "one commit on yourBranch"
git push --force
```
