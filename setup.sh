rm -f $HOME/.bashrc
rm -f $HOME/.bash_profile
rm -f $HOME/.screenrc
rm -f $HOME/.vimrc

ln -s `pwd`/bashrc $HOME/.bashrc
ln -s `pwd`/bash_profile $HOME/.bash_profile
ln -s `pwd`/screenrc $HOME/.screenrc
ln -s `pwd`/vimrc $HOME/.vimrc
ln -s `pwd`/zshrc $HOME/.zshrc

# git config
git config --global core.editor vim
git config --global diff.tool vimdiff
