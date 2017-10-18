# vimrc

### インストール手順
```
git clone git@github.com:ayumu83s/vimrc.git

mkdir ~/.vim
mkdir ~/.vim/tmp
cp -pr colors ~/.vim/.
cp -pr .vimrc ~/.
cp -pr .gvimrc ~/.

# install vim dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/.vim/installer.sh
sh ~/.vim/installer.sh ~/.vim

# vimrcのパスを適宜修正

# install vim plugin
:call dein#install()
```

