
#Область СлужебныйПрограммныйИнтерфейс

Функция ЛокализованныеСтроки() Экспорт

	ЛокализованныеСтроки = Новый Структура;
	ЛокализованныеСтроки.Вставить("НеНайденМодульУправляемогоПриложения", НеНайденМодульУправляемогоПриложения());
	ЛокализованныеСтроки.Вставить("НеНайденМодульСеанса",                 НеНайденМодульСеанса());
	ЛокализованныеСтроки.Вставить("НеНайденМодульВнешнегоСоединения",     НеНайденМодульВнешнегоСоединения());
	ЛокализованныеСтроки.Вставить("НеНайденМодульОбычногоПриложения",     НеНайденМодульОбычногоПриложения());
	ЛокализованныеСтроки.Вставить("НеНайденОбщийМодуль",                  НеНайденОбщийМодуль());
	ЛокализованныеСтроки.Вставить("НеНайденМодульМенеджераЗначения",      НеНайденМодульМенеджераЗначения());
	ЛокализованныеСтроки.Вставить("НеНайденМодульМенеджераНастроек",      НеНайденМодульМенеджераНастроек());
	ЛокализованныеСтроки.Вставить("НеНайденМодульМенеджера",              НеНайденМодульМенеджера());
	ЛокализованныеСтроки.Вставить("НеНайденМодульОбъекта",                НеНайденМодульОбъекта());
	ЛокализованныеСтроки.Вставить("НеНайденМодульНабораЗаписей",          НеНайденМодульНабораЗаписей());
	ЛокализованныеСтроки.Вставить("НеНайденМодульФормы",                  НеНайденМодульФормы());
	ЛокализованныеСтроки.Вставить("НеНайденМодульКоманды",                НеНайденМодульКоманды());

	Возврат ЛокализованныеСтроки;

КонецФункции

#КонецОбласти

#Область ЛокализованныеСтроки

Функция НеНайденМодульУправляемогоПриложения()
	Возврат НСтр("ru = 'Не найден модуль управляемого приложения для конфигурации с идентификатором ""%1""'");
КонецФункции

Функция НеНайденМодульСеанса()
	Возврат НСтр("ru = 'Не найден модуль сеанса для конфигурации с идентификатором ""%1""'");
КонецФункции

Функция НеНайденМодульВнешнегоСоединения()
	Возврат НСтр("ru = 'Не найден модуль внешнего соединения для конфигурации с идентификатором ""%1""'");
КонецФункции

Функция НеНайденМодульОбычногоПриложения()
	Возврат НСтр("ru = 'Не найден модуль обычного приложения для конфигурации с идентификатором ""%1""'");
КонецФункции

Функция НеНайденОбщийМодуль()
	Возврат НСтр("ru = 'Не найден общий модуль с идентификатором ""%1""'");
КонецФункции

Функция НеНайденМодульМенеджераЗначения()
	Возврат НСтр("ru = 'Не найден модуль менеджера значений для объекта с идентификатором ""%1""'");
КонецФункции

Функция НеНайденМодульМенеджераНастроек()
	Возврат НСтр("ru = 'Не найден модуль менеджера настроек для объекта с идентификатором ""%1""'");
КонецФункции

Функция НеНайденМодульМенеджера()
	Возврат НСтр("ru = 'Не найден модуль менеджера с идентификатором ""%1""'");
КонецФункции

Функция НеНайденМодульОбъекта()
	Возврат НСтр("ru = 'Не найден модуль объекта с идентификатором ""%1""'");
КонецФункции

Функция НеНайденМодульНабораЗаписей()
	Возврат НСтр("ru = 'Не найден модуль набора записей для объекта с идентификатором ""%1""'");
КонецФункции

Функция НеНайденМодульФормы()
	Возврат НСтр("ru = 'Не найден модуль формы для объекта с идентификатором ""%1""'");
КонецФункции

Функция НеНайденМодульКоманды()
	Возврат НСтр("ru = 'Не найден модуль команды для объекта с идентификатором ""%1""'");
КонецФункции

#КонецОбласти
