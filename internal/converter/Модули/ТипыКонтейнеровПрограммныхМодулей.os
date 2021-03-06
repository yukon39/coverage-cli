Перем ТипыКонтейнеров;

#Область СлужебныйПрограммныйИнтерфейс

Перем МодульКонфигурации Экспорт;
Перем МодульСистемнойФормы Экспорт;
Перем МодульСистемы Экспорт;
Перем ВнешнийМодуль Экспорт;
Перем МодульРасширения Экспорт;

Функция Получить(Индекс) Экспорт
	Возврат ТипыКонтейнеров.Получить(Индекс);
КонецФункции

Функция Индекс(ТипКонтейнера) Экспорт
	Возврат ТипыКонтейнеров.Найти(ТипКонтейнера);
КонецФункции

#КонецОбласти

МодульКонфигурации = "ConfigModule";
МодульСистемнойФормы = "SystemFormModule";
МодульСистемы = "SystemModule";
ВнешнийМодуль = "ExtMDModule";
МодульРасширения = "ExtensionModule";

ТипыКонтейнеров = Новый Массив;
ТипыКонтейнеров.Добавить(МодульКонфигурации);
ТипыКонтейнеров.Добавить(МодульСистемнойФормы);
ТипыКонтейнеров.Добавить(МодульСистемы);
ТипыКонтейнеров.Добавить(ВнешнийМодуль);
ТипыКонтейнеров.Добавить(МодульРасширения);
