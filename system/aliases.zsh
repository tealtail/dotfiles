# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

#show/hide dotfiles in Finder
alias dot_show='defaults write com.apple.Finder AppleShowAllFiles YES && killall Finder'
alias dot_hide='defaults write com.apple.Finder AppleShowAllFiles NO && killall Finder'
