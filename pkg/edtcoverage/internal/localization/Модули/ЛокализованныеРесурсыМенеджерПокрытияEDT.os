
#Область СлужебныйПрограммныйИнтерфейс

Функция ЛокализованныеСтроки() Экспорт

	ЛокализованныеСтроки = Новый Структура;
	ЛокализованныеСтроки.Вставить("УтверждениеКаталогEDTТип",                 УтверждениеКаталогEDTТип());
	ЛокализованныеСтроки.Вставить("УтверждениеКаталогEDTСуществование",       УтверждениеКаталогEDTСуществование());
	ЛокализованныеСтроки.Вставить("УтверждениеПредметОтладкиТип",             УтверждениеПредметОтладкиТип());
	ЛокализованныеСтроки.Вставить("УтверждениеURLОтладкиТип",                 УтверждениеURLОтладкиТип());
	ЛокализованныеСтроки.Вставить("УтверждениеИдентификаторПроцессаТип",      УтверждениеИдентификаторПроцессаТип());
	ЛокализованныеСтроки.Вставить("УтверждениеИдентификаторПроцессаЗначение", УтверждениеИдентификаторПроцессаЗначение());
	
	ЛокализованныеСтроки.Вставить("ИсключениеОшибкаRing", ИсключениеОшибкаRing());
	ЛокализованныеСтроки.Вставить("ИсключениеПроцессНеНайден", ИсключениеПроцессНеНайден());

	Возврат ЛокализованныеСтроки;

КонецФункции

#КонецОбласти

#Область ЛокализованныеСтроки

Функция УтверждениеКаталогEDTТип()
	Возврат НСтр("ru = 'Каталог EDT должна быть строкой'");
КонецФункции

Функция УтверждениеКаталогEDTСуществование()
	Возврат НСтр("ru = 'Каталог EDT должна быть строкой'");
КонецФункции

Функция УтверждениеПредметОтладкиТип()
	Возврат НСтр("ru = 'Предмет отладки должен быть строкой'");
КонецФункции

Функция УтверждениеURLОтладкиТип()
	Возврат НСтр("ru = 'URL отладки быть строкой'");
КонецФункции

Функция УтверждениеИдентификаторПроцессаТип()
	Возврат НСтр("ru = 'Идентификатор процесса должен быть числом'");
КонецФункции

Функция УтверждениеИдентификаторПроцессаЗначение()
	Возврат НСтр("ru = 'Идентификатор процесса должен быть больше нуля'");
КонецФункции

Функция ИсключениеОшибкаRing()
	Возврат НСтр("ru = 'Ошибка вызова модуля ring:
	                   |%1'");
КонецФункции

Функция ИсключениеПроцессНеНайден()
	Возврат НСтр("ru = 'Процесс с pid %1 не найден'");
КонецФункции

#КонецОбласти
