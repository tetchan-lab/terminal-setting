export PATH="/opt/homebrew/opt/php@8.2/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.2/sbin:$PATH"
export LDFLAGS="-L/usr/local/opt/php@8.2/lib"
export CPPFLAGS="-I/usr/local/opt/php@8.2/include"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
alias mount_sakura="~/mount_sakura.sh"
alias unmount_sakura="~/unmount_sakura.sh"
# 環境変数
export LANG=ja_JP.UTF-8
# 色を使用出来るようにする
autoload -Uz colors
colors
# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
# プロンプト
# 1行表示
# PROMPT="%~ %# "
PROMPT="[tetchan-lab|%*] %c/ %# "

# 補完機能を有効にする
autoload -Uz compinit
compinit
 
# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
 
# ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

#=============================
# source zsh-syntax-highlighting
#=============================
if [ -f ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

#=============================
# source zsh-history-substring-search
#=============================
if [ -f ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh ]; then
  source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
fi

########################################
# OS 別の設定
case ${OSTYPE} in
    darwin*)
        #Mac用の設定
        export CLICOLOR=1
        alias ls='ls -G -F'
        ;;
    linux*)
        #Linux用の設定
        alias ls='ls -F --color=auto'
        ;;
esac
########################################

export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/mysql@8.0/lib"
export CPPFLAGS="-I/opt/homebrew/opt/mysql@8.0/include"
