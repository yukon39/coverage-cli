# coverage-cli
Консольное приложение для конвертации результатов покрытия 

Для получения замеров покрытия используется библиотека https://github.com/proDOOMman/Coverage41C 

# Использование

Для тех кому не терпится начать уже готов пайплайн Jenkins [`/examples/coverage.jenkinsfile`](examples/coverage.jenkinsfile).
Надо просто указать свои значения в первой секции `environment`
Для тех у кого нет Jenkins-а или кому тесны рамки консольного приложения все возможности пакета доступны через API. Смотри [`/examples/coverage.os`](examples/coverage.os). Все тоже самое, что в Jenkins, но через API.

## Запуск процедуры замера

`coverage-cli start --infobase test_database --output coverage.csv`

## Остановка процедуры замера

`coverage-cli stop`

## Конвертация замеров во внутренний формат

Конвертирует результаты покрытия из CSV формата во genericCoverage XML формат. При этом:
1. Сопоставляются внутренние идентификаторы программных модулей и файлы с исходными кодами проекта
2. Устраняется дублирование номеров строк в замерах.
3. Убираются замеры программных модулей для которых не найдены соответсвующие файлы с исходными кодами.

При указании опции `--json` отчет сохраняется во внутреннем JSON-формате, содержащем более подробную информацию о модулях.

Примеры:
* Конвертация замеров для модулей конфигурации в формате выгрузки конфигуратора:

`coverage-cli convert --input coverage.csv --output coveredLines.xml --sources src/cf --format XML`

* Конвертация замеров для модулей конфигурации в формате выгрузки EDT:

`coverage-cli convert --input coverage.csv --output coveredLines.xml --sources ProjectName/src --format EDT`

* Конвертация замеров для модулей конфигурации и модулей расширения поддерживается через конфигурационный файл (пример файла можно посмотреть в [`/examples`](examples):

`coverage-cli convert --input coverage.csv --input coveredLines.xml --config coverage-conf.json`

## Формирование списка строк требующих покрытия

Эта команда дублирует функционал SonarQube 1C BSL Community Plugin. 

Формирует список строк требующих покрытия. Пример:
`coverage-cli lines --sources src/cf --output linesToCover.xml`

## Объединение нескольких отчетов покрытия в один

Объединяет несколько отчетов покрытия в каталоге (например сформированных командами `convert` и `lines`) в один. 
`coverage-cli report --input coverageReports --output genericCoverage.xml`
