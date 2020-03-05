# myVim
configuration de mon vim perso

Restart une install neuve  = > clean la vielle config
```
cd
mv .vimrc .vimrc-old
mv .vim .vim-old
```
Refaire les dossiers pour new install
```
cd
touch .vimrc
mkdir .vim
```

lancer le terminal :
```
cd 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

ouvrir vimrc
```
vim  ~/.vimrc
:PluginInstall
```

