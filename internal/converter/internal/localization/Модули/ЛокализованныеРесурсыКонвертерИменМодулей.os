
#Область СлужебныйПрограммныйИнтерфейс

Функция ЛокализованныеСтроки() Экспорт

	ЛокализованныеСтроки = Новый Структура;
	ЛокализованныеСтроки.Вставить("ИсключениеНеизвестныйФормат", ИсключениеНеизвестныйФормат());
	ЛокализованныеСтроки.Вставить("СообщениеНеНайденОбработчик", СообщениеНеНайденОбработчик());
	ЛокализованныеСтроки.Вставить("СообщениеМодульНеСуществует", СообщениеМодульНеСуществует());

	Возврат ЛокализованныеСтроки;

КонецФункции

#КонецОбласти

#Область ЛокализованныеСтроки

Функция ИсключениеНеизвестныйФормат()
	Возврат НСтр("ru = 'Неизвестный формат исходных файлов: ""%1""'");
КонецФункции

Функция СообщениеНеНайденОбработчик()
	Возврат НСтр("ru = 'Не найден обработчик для вида программного модуля ""%1""'");
КонецФункции

Функция СообщениеМодульНеСуществует()
	Возврат НСтр("ru = 'Программный модуль не существует ""%1""'");
КонецФункции

#КонецОбласти
