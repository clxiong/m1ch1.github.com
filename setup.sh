rm -f $HOME/.bashrc
rm -f $HOME/.screenrc
rm -f $HOME/.vimrc

ln -s `pwd`/bashrc $HOME/.bashrc
ln -s `pwd`/screenrc $HOME/.screenrc
ln -s `pwd`/vimrc $HOME/.vimrc

# git config
git config --global core.editor vim
git config --global diff.tool vimdiff
