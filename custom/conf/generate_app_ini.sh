#!/bin/bash

# Отримуємо IP-адресу контейнера MariaDB
db_ip=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mariadbcontainer)

# Створюємо змінну середовища з IP-адресою для використання в Docker Compose

sed -i "s/HOST = .*/HOST = $db_ip:3306/" app.ini

echo "Файл app.ini згенеровано з IP-адресою контейнера MariaDB: $DB_HOST"
