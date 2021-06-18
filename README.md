# coverage-cli
Консольное приложение для конвертации результатов покрытия 

Для получения замеров покрытия используется библиотека https://github.com/proDOOMman/Coverage41C 

# Использование

Для тех кому не терпится начать уже готов пайплайн Jenkins [`/examples/coverage.jenkinsfile`](examples/coverage.jenkinsfile).
Надо просто указать свои значения в первой секции `environment`

Для тех у кого нет Jenkins-а или кому тесны рамки консольного приложения все возможности пакета доступны через API. Смотри [`/examples/coverage.os`](examples/coverage.os). Все тоже самое, что в Jenkins, но через API.

## 1 Запуск процедуры замера

`coverage-cli start --infobase test_database --output coverage.csv`

## 2 Остановка процедуры замера

`coverage-cli stop`

## 3 Конвертация замеров для отправки на сервер SonarQube

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

## 4 Формирование списка строк, требующих покрытия (необязательно)

Эта команда дублирует функционал плагина "SonarQube 1C BSL Community Plugin" для сервера SonarQube. 

И является необязательной, если на сервере SonarQube для анализируемого проекта уже включена настройка "BSL calculate lines to cover" в настройках "1C (BSL)"
Подробнее см. [Документация SonarQube 1C (BSL) Community Plugin](https://1c-syntax.github.io/sonar-bsl-plugin-community/) - раздел "Расчет строк для покрытия тестами"

Формирует список строк требующих покрытия. Пример:
`coverage-cli lines --sources src/cf --output linesToCover.xml`

## 5 Объединение нескольких отчетов покрытия в один (дополнительно)

Объединяет несколько отчетов покрытия в каталоге (например сформированных командами `convert` и `lines`) в один. 
`coverage-cli report --input coverageReports --output genericCoverage.xml`
