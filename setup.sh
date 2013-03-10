echo "This will setup the ~/.vim directory"
cp .astylerc ~/
cp .bash_profile ~/
cp .bashrc ~/
cp .emacs ~/
cp .gdbinit ~/
cp .shell_functions ~/
cp .tmux.conf ~/
cp .vimproj ~/
cp .vimrc ~/
cp .zshrc ~/
cp vimfiles ~/.vim


if [[ -f /proc/version ]] ; then 
  echo "I assume you are on linux"
else
  echo "I assume you are on mac"
  cp .slate ~/
fi

