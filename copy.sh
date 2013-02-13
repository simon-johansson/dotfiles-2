#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

# Copy basic config files
for FILE in .zshrc .tmux.conf .vimrc; do
    $CP "$DIR/$FILE" ~/
done;

# Create tmuxified directory structure & copy files
mkdir -v ~/.tmuxified

$CP "$DIR/.tmuxified/themes" ~/.tmuxified/
$CP "$DIR/.tmuxified/scripts/basic-cpu-and-memory.tmux" \
         /usr/local/bin/basic-cpu-and-memory.tmux

chmod 755 ~/.tmuxified
find ~/.tmuxified -type d -exec chmod 755 {} \;
find ~/.tmuxified -type f -exec chmod 644 {} \;

git config --global user.name "Michael Robinson"
git config --global user.email mike@pagesofinterest.net

echo -e "\033[31m
    The Python library 'psutils' is required for tmuxified's 'basic-cpu-and-memory plugin'.

    \033[00mGet it here: \033[36mhttp://code.google.com/p/psutil/" >&2;
echo -n ""

# Enable git colours
git config --global --add color.ui true

exec $SHELL -l
