alias gs="git status -sb"
alias gd="git diff"
alias gdc="git diff --cached"
alias gk="gitk --all"
alias gl="git log --oneline --decorate"
alias gri="git rebase --interactive"
alias garc="git add -u && git rebase --continue"
alias gcp="git cherry-pick"
alias gpfwl="git push --force-with-lease"
alias gsm="git branch master upstream/master -f && git push origin master"
alias gfap="git fetch --all --prune"

alias msbuild="MSBuild.exe"

PATH=$PATH:/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2019/Enterprise/MSBuild/Current/Bin
PATH=$PATH:/c/Users/drnoakes/Apps
PATH=$PATH:/c/Users/drnoakes/Apps/cmake-3.13.0-win64-x64/bin
PATH=$PATH:/c/Users/drnoakes/AppData/Roaming/npm

alias st="/c/Program\ Files/Sublime\ Text\ 3/sublime_text.exe"

# bash parameter completion for the dotnet CLI

_dotnet_bash_complete()
{
  local word=${COMP_WORDS[COMP_CWORD]}

  local completions
  completions="$(dotnet complete --position "${COMP_POINT}" "${COMP_LINE}")"

  COMPREPLY=( $(compgen -W "$completions" -- "$word") )
}

complete -f -F _dotnet_bash_complete dotnet

#PS1="\[\033]0;$PWD\007\]\n\[\033[32m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ "

