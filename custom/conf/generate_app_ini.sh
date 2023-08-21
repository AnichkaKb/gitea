#!/bin/bash

# Отримуємо IP-адресу контейнера MariaDB
db_ip=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mariadbcontainer)

# Створюємо змінну середовища з IP-адресою для використання в Docker Compose

sed -i "s/HOST = .*/HOST = $db_ip:3306/" app.ini

_cli_bash_autocomplete() {
  if [[ "${COMP_WORDS[0]}" != "source" ]]; then
    local cur opts base
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    if [[ "$cur" == "-"* ]]; then
      opts=$( ${COMP_WORDS[@]:0:$COMP_CWORD} ${cur} --generate-bash-completion )
    else
      opts=$( ${COMP_WORDS[@]:0:$COMP_CWORD} --generate-bash-completion )
    fi
    COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
    return 0
  fi
}
if [ -z "$PROG" ] && [ ! "$(command -v gitea &> /dev/null)" ] ; then
  complete -o bashdefault -o default -o nospace -F _cli_bash_autocomplete gitea
elif [ -z "$PROG" ]; then
  complete -o bashdefault -o default -o nospace -F _cli_bash_autocomplete ./gitea
  complete -o bashdefault -o default -o nospace -F _cli_bash_autocomplete "$PWD/gitea"
else
  complete -o bashdefault -o default -o nospace -F _cli_bash_autocomplete "$PROG"
  unset PROG
fi

echo "Файл app.ini згенеровано з IP-адресою контейнера MariaDB: $DB_HOST"
