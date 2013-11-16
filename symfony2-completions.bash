_symfony2_console_complete()
{
    if [ $COMP_CWORD -gt 1 ]; then
        local cmd_list=`${COMP_WORDS[0]} help ${COMP_WORDS[1]} --raw | awk '/^ ?--.*$/ { print $1 }'`
    else
        local cmd_list=`${COMP_WORDS[0]} list --raw | awk '{ print $1 }'`
    fi
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$cmd_list" -- $cur) )
}

complete -F _symfony2_console_complete app/console
complete -F _symfony2_console_complete symfony
