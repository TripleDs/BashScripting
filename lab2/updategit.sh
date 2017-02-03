#!/bin/bash
# this script auto-updates a git repository and expects the commit coment on the command line

git add -A
git commit -m "$@"
git push
