# https://github.com/dverzolla/ps1_k8s/

ps1_k8s() {
        # +-------------------+-------------------+-------------------+
        # |        SET        |     FG COLORS     |     BG COLORS     |       
        # +-------------------+-------------------+-------------------+
        # | REGULAR     = 0   | CURRENT = 1       | CURRENT = 1       |
        # | BOLD/BRIGHT = 1   | BLACK   = 30      | BLACK   = 40      |
        # | DIM         = 2   | RED     = 31      | RED     = 41      |
        # | ITALIC      = 3   | GREEN   = 32      | GREEN   = 42      |
        # | UNDERLINE   = 4   | YELLOW  = 33      | YELLOW  = 43      |
        # | BLINK       = 5   | BLUE    = 34      | BLUE    = 44      |
        # | ---               | MAGENTA = 35      | MAGENTA = 45      |
        # | ---               | CYAN    = 36      | CYAN    = 46      |
        # | ---               | WHITE   = 97      | WHITE   = 97      |
        # +-------------------+-------------------+-------------------+
        # ref: https://misc.flogisoft.com/bash/tip_colors_and_formatting

        SET='0'
        FG_COLOR='33'
        BG_COLOR='1'
        RESET_COLOR='\e[m'

        RE='^current.*production.*$'
        if(grep -qe ${RE} ~/.kube/config); then
                # is production
                export PS1="\e[${SET};${FG_COLOR};${BG_COLOR}m[\u@\h \w]\$${RESET_COLOR} "
        else
                # return the PS1 to regular one
                export PS1="[\u@\h \w]\$ "
        fi
}

PROMPT_COMMAND='ps1_k8s'
