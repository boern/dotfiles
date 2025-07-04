# 默认用fd替换find，忽略部分目录
# Use fd (https://github.com/sharkdp/fd) instead of the default find
export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build}"
# 窗口布局及预览,需要提前安装ccat/highlight等语法高亮工具
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --info=inline --preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"'
# 修改默认触发字符改为
# export FZF_COMPLETION_TRIGGER='~~'
# set ctrl+t
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_CTRL_T_OPTS="--select-1 --exit-0"
# set alt+c,显示隐藏文件目录
export FZF_ALT_C_COMMAND="fd -t d . --hidden --follow"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
# set ctrl+r,命令历史排序以及命令预览
export FZF_CTRL_R_OPTS='--sort --exact --preview "echo {}" --preview-window down:3:hidden:wrap --bind "?:toggle-preview"'
# if you prefer to start in a tmux split pane, set $FZF_TMUX to 1
# export FZF_TMUX=1
# fkill - kill process
fkill() {
   local pid
   pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')
   if [ "x$pid" != "x" ]; then
       echo $pid | xargs kill -${1:-9}
   fi
}

# using ripgrep combined with preview
# find-in-file - usage: fif <searchTerm>
fif() {
  if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
  rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
}