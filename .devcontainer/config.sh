#!/bin/sh
echo "Installing Developer Requirements"
pip3 install --user -r requirements/requirements.txt
echo "Merge Commits Only"
git config pull.rebase false
echo "pip freeze pre commit"
ln .devcontainer/pre-commit .git/hooks/
chmod +x .git/hooks/pre-commit