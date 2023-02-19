# ansible_labs
Konev T A - Ansible labs
Новые ветки - выполненные лабы.

lab2 - Установлен Ansible и создан плейбук для создания пользователя, директории и загрузки файла в последнюю + bash скрипт для запуска плейбука.
https://github.com/DetskiiKreM/ansible_labs/compare/main...lab2

lab3 - Установка приложения MySQL + WordPress + FPM + nginx. (Использованы внешними ролями от geerlingguy с помощью ansible-galaxy для WordPress использован пример из методички)
https://github.com/DetskiiKreM/ansible_labs/compare/lab3?expand=1

lab4 - Модифицировать роль с использованием vault и tags.
https://github.com/DetskiiKreM/ansible_labs/compare/lab4?expand=1

lab5 - 1) Перевести плейбуки на работу с внешними ролями с помощью ansible-galaxy
(.gitignore + ansible.cfg + requirements file, удалить внешние роли из
roles)
2*) Добавить линтеры в проект (yamllint + ansible-lint)
3*) Разбить плейбуки на несколько по функциях
4*) Выбрать роль (которую реализовывали в проекте). В этой роли добавить файл optional.yml,
которые будут выполняться, если переменная inform имеет true значение. В этих тасках реализовать
отправку email на указанный в inventory адрес, что выполнение плейбука завершено 
1) Выполнено в 3ем домашнем задании.
2) Установлены yamllint и ansible-lint, результаты проверок записаны в соответствующие .log файлы. После проверки yamllint в wordpress.yml убраны лишние пробелы.
3) Исходный плейбук wordpress.yml разбит по функциям ( создан новый deploy_all.yml в котором при помощи ключевого слова import_playbook подключаются 4 новых для установки соответствующих приложений).
4) Добавлен файл optional.yml, внесены изменения с переменной inform в wordpress_new.yml
https://github.com/DetskiiKreM/ansible_labs/compare/lab4...lab5?expand=1

lab6 - 1) Написать роль установки nginx:
1.1) Можно было установить nginx в виде docker container,
либо установить в виде пакета ОС
1.1 COMMENT) Нужно структурировать файлы тасок на несколько,
анализировать переменные, как нужно деплоить
1.2) Конфиг nginx сделать на jinja (сделать минимальным, порт,
timeout, upstreams брать из инвентори)
https://github.com/DetskiiKreM/ansible_labs/compare/lab6?expand=1

lab7 - 1) Напишем роль, которая будет проверять работоспособность нашей инфраструктуры
1.1) Проверить, что nginx работает (проверить порт, проверить наличие процессе, etc)
1.2) Проверить, что mysql работает
*) Совет: использовать модификатор delegate_to
2) Написать роль бэкапиривания БД (Например: выгрузить какую-нибудь таблицу в файл)
*) Совет: Использовать модификатор run_once
https://github.com/DetskiiKreM/ansible_labs/compare/lab7?expand=1

lab8 -Здесь в роль установки Nginx из 6 лабы добавлен таск с модулем assert, который проверяет наличие всех трех переменных в hostvars текущего хоста. Если какой-то из переменных отсутствует, то таск завершается с ошибкой и выводится сообщение в поле fail_msg. Если все три переменные заданы, то выводится сообщение в поле success_msg.
https://github.com/DetskiiKreM/ansible_labs/compare/lab8?expand=1
