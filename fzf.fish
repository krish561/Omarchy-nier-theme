set -l color00 '#d1cdb7'
set -l color01 '#8b2020'
set -l color02 '#454138'
set -l color03 '#7a6a3a'
set -l color04 '#454138'
set -l color05 '#5a5248'
set -l color06 '#6a6358'
set -l color07 '#454138'
set -l color08 '#bab5a1'
set -l color09 '#8b2020'
set -l color0A '#7a6a3a'
set -l color0B '#5a5248'
set -l color0C '#6a6358'
set -l color0D '#454138'
set -l color0E '#5a5248'
set -l color0F '#1a1814'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color08,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color02,prompt:$color0A,hl+:$color0D"
