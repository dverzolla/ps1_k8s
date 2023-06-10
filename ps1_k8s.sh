# color ps1 to red based in k8s context
ps1_k8s() {
        export re_to_match='^current.*production.*$'
        if(grep -qe $re_to_match ~/.kube/config); then
                # is production
                export PS1="\e[0;31m[\u@\h \w]\$ \e[m"
        else
                # return the PS1 to regular one
                export PS1="[\u@\H \w]\$ "
        fi
}

PROMPT_COMMAND='ps1_k8s'
