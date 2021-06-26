#Использовать "../../../internal/csv"

Перем ИмяФайлаЗамеров;

#Область СлужебныйПрограммныйИнтерфейс

Процедура РазобратьЗамеры(Конвертер) Экспорт
	
	ЧтениеCSV = Новый ЧтениеCSV();
	ЧтениеCSV.УстановитьФайл(ИмяФайлаЗамеров);
	ЧтениеCSV.Прочитать();
	
	ПоляЗаголовка = ЧтениеCSV.ТекущееЗначение();
	ЧтениеCSV.УстановитьПоляЗаголовка(ПоляЗаголовка);
	
	Пока ЧтениеCSV.Прочитать() Цикл
				
		ЗначениеЗамера = ЧтениеCSV.ТекущиеЗначенияПолей(Истина);
		СтрокаЗамера = Конвертер.НоваяСтрокаЗамера();
		ЗаполнитьЗначенияСвойств(СтрокаЗамера, ЗначениеЗамера);
		СтрокаЗамера.ModuleType = ЗначениеЗамера.ModuleName;
		СтрокаЗамера.ExtensionName = ЗначениеЗамера.ExtentionName;
				
		Конвертер.РазобратьДанныеЗамера(СтрокаЗамера);
		
	КонецЦикла;
	
	ЧтениеCSV.Закрыть();
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытий

Процедура ПриСозданииОбъекта(ПараметрИмяФайлаЗамеров)
	ИмяФайлаЗамеров = ПараметрИмяФайлаЗамеров;
КонецПроцедуры

#КонецОбласти