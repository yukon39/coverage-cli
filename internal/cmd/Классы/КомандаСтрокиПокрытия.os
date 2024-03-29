
#Использовать "../internal/localization"
#Использовать "../../../internal/utils"

Перем Лог;
Перем ЛокализованныеСтроки;

#Область КомандаПриложения

Процедура ОписаниеКоманды(Команда) Экспорт

	Команда.Опция("o output", "", ЛокализованныеСтроки.ФайлGenericCoverage)
		.ТСтрока()
		.Обязательный();

	Команда.Опция("w workspace", ".", ЛокализованныеСтроки.КаталогПроекта)
		.ТСтрока();

	Команда.Опция("s sources", "", ЛокализованныеСтроки.КаталогИсходников)
		.ТСтрока();

КонецПроцедуры

Процедура ВыполнитьКоманду(Знач Команда) Экспорт

	КаталогПроекта = Команда.ЗначениеОпции("workspace");
	КаталогИсходниковКонфигурации = Команда.ЗначениеОпции("sources");
	ФайлВывода = Команда.ЗначениеОпции("output");
	
	МенеджерПокрытия = Новый МенеджерПокрытияEDT();

	Попытка
		
		МенеджерПокрытия.СформироватьСтрокиКПокрытию(ФайлВывода, КаталогПроекта, КаталогИсходниковКонфигурации);
	
	Исключение
		
		ИнформацияОбОшибке = ИнформацияОбОшибке();
		Лог.КритичнаяОшибка(КраткоеПредставлениеОшибки(ИнформацияОбОшибке()));
		Лог.Отладка(ПодробноеПредставлениеОшибки(ИнформацияОбОшибке()));
		ЗавершитьРаботу(-1);
	
	КонецПопытки;

КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытий

Процедура ПриСозданииОбъекта() Экспорт
	Лог = ПараметрыПриложения.Лог();
	ЛокализованныеСтроки = ЛокализованныеРесурсыКомандаСтрокиПокрытия.ЛокализованныеСтроки();
КонецПроцедуры

#КонецОбласти