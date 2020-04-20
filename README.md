# dot-files
## config.fish
```bash
$ ln -s $HOME/dot-files/config.fish $HOME/.config/fish/config.fish
$ source $HOME/.config/fish/config.fish
```

## init.vim
0. pyenvのインストールと設定
```bash
$ # 上記で作った環境をロード
$ pyenv shell neovim3
$ # 仮想環境に必要ツールをインストール
$ pip install -U flake8 flake8-import-order autopep8 black isort neovim
$ # アンロード
$ pyenv shell --unset
```

1. deinをインストールする
```bash
$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
$ sh ./installer.sh ~/.local/share/dein
```

2. 自分のホームディレクトリに`.vimrc`を書き換える
```bash
$ ln -s $HOME/dot-files/init.vim $HOME/.config/nvim/init.vim
```


3. vimを開いて，以下のコマンドを実行する
```
:call dein#install()
```

## Gitの設定
```bash
git config --global user.name "First-name Family-name"
git config --global user.email "username@example.com"

git config --global core.editor 'vim -c "set fenc=utf-8"'
```
