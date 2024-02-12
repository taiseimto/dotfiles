PS1='%F{yellow}[%n@%m %~]%# %f'


setopt no_beep
setopt correct
setopt share_history
setopt hist_ignore_all_dups


[ -f "/home/mt/.ghcup/env" ] && source "/home/mt/.ghcup/env" # ghcup-env
export PATH=/home/mt/.cargo/bin:/home/mt/.cabal/bin:/home/mt/.ghcup/bin:/home/mt/.deno/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/mt/.local/bin

alias oj=/home/mt/workspace/atcoder/oj
alias oj-test-hs='oj test -c "runhaskell Main.hs"'
