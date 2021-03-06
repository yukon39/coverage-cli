﻿#Область СлужебныйПрограммныйИнтерфейс

Функция ЛокализованныеСтроки() Экспорт
	
	ЛокализованныеСтроки = Новый Структура;
	
	// BSLLS:NestedFunctionInParameters-off
	ЛокализованныеСтроки.Вставить("УтверждениеПараметрыСоединенияТип", УтверждениеПараметрыСоединенияТип());
	ЛокализованныеСтроки.Вставить("УтверждениеИмяФайлаРезультатаТип", УтверждениеИмяФайлаРезультатаТип());
	ЛокализованныеСтроки.Вставить("УтверждениеПутьКПроектуТип", УтверждениеПутьКПроектуТип());
	ЛокализованныеСтроки.Вставить("УтверждениеПутьКПроектуЗаполненность", УтверждениеПутьКПроектуЗаполненность());
	ЛокализованныеСтроки.Вставить("УтверждениеПутьКИсходнымФайламТип", УтверждениеПутьКИсходнымФайламТип());
	ЛокализованныеСтроки.Вставить("УтверждениеПутьКИсходнымФайламЗаполненность",
		УтверждениеПутьКИсходнымФайламЗаполненность());
	// BSLLS:NestedFunctionInParameters-on
	
	Возврат ЛокализованныеСтроки;
	
КонецФункции

#КонецОбласти

#Область ЛокализованныеСтроки

Функция УтверждениеПараметрыСоединенияТип()
	Возврат НСтр("ru='Параметры соединения должна быть объектом';
		|en='Connection parameters should be an object'");
КонецФункции

Функция УтверждениеИмяФайлаРезультатаТип()
	Возврат НСтр("ru='Имя файла результата должно быть строкой';
		|en='Result file name should be a string'");
КонецФункции

Функция УтверждениеПутьКПроектуТип()
	Возврат НСтр("ru='Путь к проекту должен быть строкой';
		|en='Project path should be a string'");
КонецФункции

Функция УтверждениеПутьКПроектуЗаполненность()
	Возврат НСтр("ru='Путь к проекту должен быть заполнен';
		|en='Project path should be filled'");
КонецФункции

Функция УтверждениеПутьКИсходнымФайламТип()
	Возврат НСтр("ru='Путь к исходным файлам должен быть строкой';
		|en='Path to source files should be a string'");
КонецФункции

Функция УтверждениеПутьКИсходнымФайламЗаполненность()
	Возврат НСтр("ru='Путь к исходным файлам должен быть заполнен';
		|en='Path to source files should be filled'");
КонецФункции

#КонецОбласти