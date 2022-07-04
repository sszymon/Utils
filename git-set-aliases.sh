#!/bin/bash

# git config --global --unset alias.alias_name # Unset the alias

git config --global alias.co checkout
git config --global alias.s status
git config --global alias.ss status --short
git config --global alias.sh stash
git config --global alias.shp 'stash pop'
git config --global alias.b branch
git config --global alias.f fetch
git config --global alias.a '!fn() { git add . && git status; }; fn'
git config --global alias.afx '!fn() { npm run-script prettier:fix && git add . && git status; }; fn'
git config --global alias.c '!fn() { git commit -m "$@"; }; fn'
git config --global alias.cam '!fn() { git commit --amend; }; fn'
git config --global alias.acp '!fn() { git add . && git commit -m "$@" && git push origin HEAD; }; fn'

# check your aliases
git config --get-regexp alias
# aliases=$(git config --get-regexp alias 2>&1)
# echo $aliases
