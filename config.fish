alias vim='nvim'
alias vi='nvim'

# ↓これを追加する
bass source /etc/profile

# ！問題があったらこっちにするといいかも(/etc/profile.d以下だけ読み込み)
if test -d /etc/profile.d
   for i in /etc/profile.d/*.sh
     bass source $i
   end
end
