# dot-files
## vimrc
1. deinをインストールする
```bash
$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
$ sh ./installer.sh ~/.vim/bundle
```

2. 自分のホームディレクトリに`.vimrc`を書き換える

3. vimを開いて，以下のコマンドを実行する
```
:call dein#install()
```
