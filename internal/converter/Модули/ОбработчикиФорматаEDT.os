
Перем КешКаталогов;

#Область ОбработчикиДелегатов

Функция НайтиМодульУправляемогоПриложения(КаталогПроектаEDT, ИдентификаторПрограммногоМодуля) Экспорт
	
	ПутьКИсходнымФайлам = ПутьКИсходнымФайлам(КаталогПроектаEDT);

	КаталогОбъектаМетаданных = ПолучитьОбъектИзКеша(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля);

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		КаталогОбъектаМетаданных = НайтиОбъектМетаданных(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля, ".");
	КонецЕсли;
	
	Если КаталогОбъектаМетаданных = Неопределено Тогда
	 	ОбработчикиФорматов.НеНайденМодульУправляемогоПриложения(ИдентификаторПрограммногоМодуля);
		Возврат Неопределено;
	КонецЕсли;

	Возврат ОбъединитьПути(ПутьКИсходнымФайлам, "Configuration", "ManagedApplicationModule.bsl");

КонецФункции

Функция НайтиМодульСеанса(КаталогПроектаEDT, ИдентификаторПрограммногоМодуля) Экспорт
	
	ПутьКИсходнымФайлам = ПутьКИсходнымФайлам(КаталогПроектаEDT);

	КаталогОбъектаМетаданных = ПолучитьОбъектИзКеша(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля);

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		КаталогОбъектаМетаданных = НайтиОбъектМетаданных(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля, ".");
	КонецЕсли;

	Если КаталогОбъектаМетаданных = Неопределено Тогда
	 	ОбработчикиФорматов.НеНайденМодульСеанса(ИдентификаторПрограммногоМодуля);
		Возврат Неопределено;
	КонецЕсли;

	Возврат ОбъединитьПути(ПутьКИсходнымФайлам, "Configuration", "SessionModule.bsl");

КонецФункции

Функция НайтиМодульВнешнегоСоединения(КаталогПроектаEDT, ИдентификаторПрограммногоМодуля) Экспорт
	
	ПутьКИсходнымФайлам = ПутьКИсходнымФайлам(КаталогПроектаEDT);

	КаталогОбъектаМетаданных = ПолучитьОбъектИзКеша(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля);

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		КаталогОбъектаМетаданных = НайтиОбъектМетаданных(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля, ".");
	КонецЕсли;

	Если КаталогОбъектаМетаданных = Неопределено Тогда
	 	ОбработчикиФорматов.НеНайденВнешнегоСоединения(ИдентификаторПрограммногоМодуля);
		Возврат Неопределено;
	КонецЕсли;

	Возврат ОбъединитьПути(ПутьКИсходнымФайлам, "Configuration", "ExternalConnectionModule.bsl");

КонецФункции

Функция НайтиМодульОбычногоПриложения(КаталогПроектаEDT, ИдентификаторПрограммногоМодуля) Экспорт
	
	ПутьКИсходнымФайлам = ПутьКИсходнымФайлам(КаталогПроектаEDT);

	КаталогОбъектаМетаданных = ПолучитьОбъектИзКеша(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля);

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		КаталогОбъектаМетаданных = НайтиОбъектМетаданных(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля, ".");
	КонецЕсли;

	Если КаталогОбъектаМетаданных = Неопределено Тогда
	 	ОбработчикиФорматов.НеНайденМодульОбычногоПриложения(ИдентификаторПрограммногоМодуля);
		Возврат Неопределено;
	КонецЕсли;

	Возврат ОбъединитьПути(ПутьКИсходнымФайлам, "Configuration", "OrdinaryApplicationModule.bsl");

КонецФункции

Функция НайтиОбщийМодуль(КаталогПроектаEDT, ИдентификаторПрограммногоМодуля) Экспорт

	ПутьКИсходнымФайлам = ПутьКИсходнымФайлам(КаталогПроектаEDT);

	КаталогОбъектаМетаданных = ПолучитьОбъектИзКеша(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля);

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		КаталогиТиповОбъектовМетаданных = ОбработчикиФорматов.СписокКаталоговОбщийМодуль();
		КаталогОбъектаМетаданных = НайтиОбъектМетаданныхВКаталогах(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля, 
			КаталогиТиповОбъектовМетаданных);
	КонецЕсли;
	
	Если КаталогОбъектаМетаданных = Неопределено Тогда
		ОбработчикиФорматов.НеНайденОбщийМодуль(ИдентификаторПрограммногоМодуля);
		Возврат Неопределено;
	КонецЕсли;

	Возврат ОбъединитьПути(КаталогОбъектаМетаданных.ПолноеИмя, "Module.bsl");	

КонецФункции

Функция НайтиМодульМенеджераЗначения(КаталогПроектаEDT, ИдентификаторПрограммногоМодуля) Экспорт
	
	ПутьКИсходнымФайлам = ПутьКИсходнымФайлам(КаталогПроектаEDT);

	КаталогОбъектаМетаданных = ПолучитьОбъектИзКеша(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля);

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		КаталогОбъектаМетаданных = НайтиОбъектМетаданных(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля, 
			"Constants");
	КонецЕсли;

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		ОбработчикиФорматов.НеНайденМодульМенеджераЗначения(ИдентификаторПрограммногоМодуля);
		Возврат Неопределено;
	КонецЕсли;

	Возврат ОбъединитьПути(КаталогОбъектаМетаданных.ПолноеИмя, "ValueManagerModule.bsl");	

КонецФункции

Функция НайтиМодульМенеджераНастроек(КаталогПроектаEDT, ИдентификаторПрограммногоМодуля) Экспорт
	
	ПутьКИсходнымФайлам = ПутьКИсходнымФайлам(КаталогПроектаEDT);

	КаталогОбъектаМетаданных = ПолучитьОбъектИзКеша(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля);
	
	Если КаталогОбъектаМетаданных = Неопределено Тогда
		КаталогОбъектаМетаданных = НайтиОбъектМетаданных(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля, 
			"SettingsStorages");
	КонецЕсли;

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		ОбработчикиФорматов.НеНайденМодульМенеджераНастроек(ИдентификаторПрограммногоМодуля);
		Возврат Неопределено;
	КонецЕсли;

	Возврат ОбъединитьПути(КаталогОбъектаМетаданных.ПолноеИмя, "ManagerModule.bsl");	

КонецФункции

Функция НайтиМодульМенеджера(КаталогПроектаEDT, ИдентификаторПрограммногоМодуля) Экспорт

	ПутьКИсходнымФайлам = ПутьКИсходнымФайлам(КаталогПроектаEDT);

	КаталогОбъектаМетаданных = ПолучитьОбъектИзКеша(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля);
	
	Если КаталогОбъектаМетаданных = Неопределено Тогда
		КаталогиТиповОбъектовМетаданных = ОбработчикиФорматов.СписокКаталоговМодульМенеджера();
		КаталогОбъектаМетаданных = НайтиОбъектМетаданныхВКаталогах(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля, 
			КаталогиТиповОбъектовМетаданных);
	КонецЕсли;

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		ОбработчикиФорматов.НеНайденМодульМенеджера(ИдентификаторПрограммногоМодуля);
		Возврат Неопределено;
	КонецЕсли;

	Возврат ОбъединитьПути(КаталогОбъектаМетаданных.ПолноеИмя, "ManagerModule.bsl");	

КонецФункции

Функция НайтиМодульОбъекта(КаталогПроектаEDT, ИдентификаторПрограммногоМодуля) Экспорт
	
	ПутьКИсходнымФайлам = ПутьКИсходнымФайлам(КаталогПроектаEDT);

	КаталогОбъектаМетаданных = ПолучитьОбъектИзКеша(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля);

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		КаталогиТиповОбъектовМетаданных = ОбработчикиФорматов.СписокКаталоговМодульОбъекта();
		КаталогОбъектаМетаданных = НайтиОбъектМетаданныхВКаталогах(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля, 
			КаталогиТиповОбъектовМетаданных);
	КонецЕсли;
	
	Если КаталогОбъектаМетаданных = Неопределено Тогда
		ОбработчикиФорматов.НеНайденМодульОбъекта(ИдентификаторПрограммногоМодуля);
		Возврат Неопределено;
	КонецЕсли;
	
	Возврат ОбъединитьПути(КаталогОбъектаМетаданных.ПолноеИмя, "ObjectModule.bsl");	

КонецФункции

Функция НайтиМодульНабораЗаписей(КаталогПроектаEDT, ИдентификаторПрограммногоМодуля) Экспорт
	
	ПутьКИсходнымФайлам = ПутьКИсходнымФайлам(КаталогПроектаEDT);

	КаталогОбъектаМетаданных = ПолучитьОбъектИзКеша(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля);

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		КаталогиТиповОбъектовМетаданных = ОбработчикиФорматов.СписокКаталоговМодульНабораЗаписей();
		КаталогОбъектаМетаданных = НайтиОбъектМетаданныхВКаталогах(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля, 
			КаталогиТиповОбъектовМетаданных);
	КонецЕсли;

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		КаталогОбъектаМетаданных = НайтиПодчиненныеОбъектыМетаданных(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля,
			"CalculationRegisters", "Recalculations", "recalculations");
	КонецЕсли;	

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		ОбработчикиФорматов.НеНайденМодульНабораЗаписей(ИдентификаторПрограммногоМодуля);
		Возврат Неопределено;
	КонецЕсли;
	
	Возврат ОбъединитьПути(КаталогОбъектаМетаданных.ПолноеИмя, "RecordSetModule.bsl");	

КонецФункции

Функция НайтиМодульФормы(КаталогПроектаEDT, ИдентификаторПрограммногоМодуля) Экспорт
	
	ПутьКИсходнымФайлам = ПутьКИсходнымФайлам(КаталогПроектаEDT);

	КаталогОбъектаМетаданных = ПолучитьОбъектИзКеша(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля);

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		КаталогиТиповОбъектовМетаданных = ОбработчикиФорматов.СписокКаталоговМодульФормы();
		КаталогОбъектаМетаданных = НайтиПодОбъектыМетаданныхВКаталогах(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля,
			КаталогиТиповОбъектовМетаданных, "Forms", "forms");
	КонецЕсли;
	
	Если КаталогОбъектаМетаданных = Неопределено Тогда
		КаталогОбъектаМетаданных = НайтиОбъектМетаданных(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля, 
			"CommonForms");
	КонецЕсли;

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		ОбработчикиФорматов.НеНайденМодульФормы(ИдентификаторПрограммногоМодуля);
		Возврат Неопределено;
	КонецЕсли;

	Возврат ОбъединитьПути(КаталогОбъектаМетаданных.ПолноеИмя, "Module.bsl");

КонецФункции

Функция НайтиМодульКоманды(КаталогПроектаEDT, ИдентификаторПрограммногоМодуля) Экспорт

	ПутьКИсходнымФайлам = ПутьКИсходнымФайлам(КаталогПроектаEDT);

	КаталогОбъектаМетаданных = ПолучитьОбъектИзКеша(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля);

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		КаталогиТиповОбъектовМетаданных = ОбработчикиФорматов.СписокКаталоговМодульКоманды();
		КаталогОбъектаМетаданных = НайтиПодОбъектыМетаданныхВКаталогах(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля,
			КаталогиТиповОбъектовМетаданных, "Commands", "commands");
	КонецЕсли;
	
	Если КаталогОбъектаМетаданных = Неопределено Тогда
		КаталогОбъектаМетаданных = НайтиОбъектМетаданных(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля, 
			"CommonCommands");
	КонецЕсли;

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		ОбработчикиФорматов.НеНайденМодульКоманды(ИдентификаторПрограммногоМодуля);
		Возврат Неопределено;
	КонецЕсли;

	Возврат ОбъединитьПути(КаталогОбъектаМетаданных.ПолноеИмя, "CommandModule.bsl");

КонецФункции

Функция НайтиВнешнийМодульОбъекта(КаталогПроектаEDT, ИдентификаторПрограммногоМодуля) Экспорт
	
	ПутьКИсходнымФайлам = ПутьКИсходнымФайлам(КаталогПроектаEDT);

	КаталогОбъектаМетаданных = ПолучитьОбъектИзКеша(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля);

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		КаталогОбъектаМетаданных = НайтиОбъектМетаданных(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля, ".");
	КонецЕсли;
	
	Если КаталогОбъектаМетаданных = Неопределено Тогда
	 	ОбработчикиФорматов.НеНайденМодульОбъекта(ИдентификаторПрограммногоМодуля);
		Возврат Неопределено;
	КонецЕсли;

	Возврат ОбъединитьПути(КаталогОбъектаМетаданных.ПолноеИмя, "ObjectModule.bsl");

КонецФункции

Функция НайтиВнешнийМодульФормы(КаталогПроектаEDT, ИдентификаторПрограммногоМодуля) Экспорт
	
	ПутьКИсходнымФайлам = ПутьКИсходнымФайлам(КаталогПроектаEDT);

	КаталогОбъектаМетаданных = ПолучитьОбъектИзКеша(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля);

	Если КаталогОбъектаМетаданных = Неопределено Тогда
		КаталогОбъектаМетаданных = НайтиПодчиненныеОбъектыМетаданных(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля,
			".", "Forms", "forms");
	КонецЕсли;
	
	Если КаталогОбъектаМетаданных = Неопределено Тогда
	 	ОбработчикиФорматов.НеНайденМодульФормы(ИдентификаторПрограммногоМодуля);
		Возврат Неопределено;
	КонецЕсли;

	Возврат ОбъединитьПути(КаталогОбъектаМетаданных.ПолноеИмя, "Module.bsl");

КонецФункции

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Функция ПутьКИсходнымФайлам(КаталогПроектаEDT)
	Возврат ОбъединитьПути(КаталогПроектаEDT, "src");
КонецФункции

Функция ФайлОбъектаМетаданных(КаталогОбъектаМетаданных)
	
	ФайлыМетаданных = НайтиФайлы(КаталогОбъектаМетаданных, "*.mdo");
	Если ФайлыМетаданных.Количество() = 0 Тогда
		Возврат Неопределено;
	КонецЕсли;

	Возврат ФайлыМетаданных[0];

КонецФункции

Функция ИдентификаторОбъектаМетаданных(ФайлОбъектаМетаданных)
	
	ЧтениеXML = Новый ЧтениеXML;
	ЧтениеXML.ОткрытьФайл(ФайлОбъектаМетаданных.ПолноеИмя);
	ЧтениеXML.ПерейтиКСодержимому();
	ИдентификаторМетаданных = ЧтениеXML.ЗначениеАтрибута("uuid");
	ЧтениеXML.Закрыть();

	Возврат ИдентификаторМетаданных;

КонецФункции

Функция ПодчиненныеОбъектыМетаданных(ФайлОбъектаМетаданных, ЛокальноеИмяПодОбъекта)

	Перерасчеты = Новый Структура;

	ЧтениеXML = Новый ЧтениеXML;
	ЧтениеXML.ОткрытьФайл(ФайлОбъектаМетаданных.ПолноеИмя);
	ЧтениеXML.ПерейтиКСодержимому();
	ЧтениеXML.Прочитать();
	Пока ЧтениеXML.ТипУзла = ТипУзлаXML.НачалоЭлемента Цикл

		Если ЧтениеXML.ЛокальноеИмя = ЛокальноеИмяПодОбъекта Тогда

			ИдентификаторПерерасчета = ЧтениеXML.ЗначениеАтрибута("uuid");	
			ЧтениеXML.Прочитать();
			Пока ЧтениеXML.ТипУзла = ТипУзлаXML.НачалоЭлемента Цикл
				
				Если ЧтениеXML.ЛокальноеИмя = "name" Тогда
					ЧтениеXML.Прочитать();
					ИмяПерерасчета = ЧтениеXML.Значение;
					Перерасчеты.Вставить(ИмяПерерасчета, ИдентификаторПерерасчета);
					ЧтениеXML.Прочитать();
				Иначе
					ЧтениеXML.Пропустить();
				КонецЕсли;

				ЧтениеXML.Прочитать();

			КонецЦикла;
			ЧтениеXML.Прочитать();
		
		Иначе
			ЧтениеXML.Пропустить();
			ЧтениеXML.Прочитать();
		КонецЕсли;

	КонецЦикла;

	ЧтениеXML.Закрыть();

	Возврат Перерасчеты;

КонецФункции

Функция НайтиОбъектМетаданныхВКаталогах(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля, 
	КаталогиТиповОбъектовМетаданных)

	Результат = Неопределено;

	Для Каждого КаталогТипаОбъектовМетаданных Из КаталогиТиповОбъектовМетаданных Цикл

		Результат = НайтиОбъектМетаданных(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля, 
			КаталогТипаОбъектовМетаданных);
		
		Если ТипЗнч(Результат) = Тип("Файл") Тогда
			Прервать;
		КонецЕсли;

	КонецЦикла;
	
	Возврат Результат;

КонецФункции

Функция НайтиПодОбъектыМетаданныхВКаталогах(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля,
	КаталогиТиповОбъектовМетаданных, ТипОбъекта, ЛокальноеИмяТипа)

	Результат = Неопределено;

	Для Каждого КаталогТипаОбъектовМетаданных Из КаталогиТиповОбъектовМетаданных Цикл

		Результат = НайтиПодчиненныеОбъектыМетаданных(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля,
			КаталогТипаОбъектовМетаданных, ТипОбъекта, ЛокальноеИмяТипа);
		
		
		Если ТипЗнч(Результат) = Тип("Файл") Тогда
			Прервать;
		КонецЕсли;

	КонецЦикла;

	Возврат Результат;

КонецФункции

Функция НайтиПодчиненныеОбъектыМетаданных(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля, 
	КаталогТипаОбъектовМетаданных, ИмяПодКаталога, ЛокальноеИмяТипа)
	
	Результат = Неопределено;

	КаталогРегистрыРасчета = ОбъединитьПути(ПутьКИсходнымФайлам, КаталогТипаОбъектовМетаданных);
	КаталогиРегистровРасчета = НайтиФайлы(КаталогРегистрыРасчета, "*");
	Для Каждого КаталогРегистраРасчета Из КаталогиРегистровРасчета Цикл
		
		ФайлОбъектаМетаданных = ФайлОбъектаМетаданных(КаталогРегистраРасчета.ПолноеИмя);
		Если ФайлОбъектаМетаданных = Неопределено Тогда
			Продолжить;
		КонецЕсли;

		Результат = НайтиПодчиненныйОбъектМетаданных(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля,
			ФайлОбъектаМетаданных, ИмяПодКаталога, ЛокальноеИмяТипа);

		Если ТипЗнч(Результат) = Тип("Файл") Тогда
			Прервать;
		КонецЕсли;		

	КонецЦикла;


	Возврат Результат;

КонецФункции

Функция НайтиОбъектМетаданных(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля, ПодКаталогОбъектовМетаданных)
	
	Результат = Неопределено;

	КаталогПоиска = ОбъединитьПути(ПутьКИсходнымФайлам, ПодКаталогОбъектовМетаданных);
	КаталогиОбъектовМетаданных = НайтиФайлы(КаталогПоиска, "*");
	Для Каждого КаталогОбъектаМетаданных Из КаталогиОбъектовМетаданных Цикл
		
		ФайлОбъектаМетаданных = ФайлОбъектаМетаданных(КаталогОбъектаМетаданных.ПолноеИмя);
		Если ФайлОбъектаМетаданных = Неопределено Тогда
			Продолжить;
		КонецЕсли;

		ИдентификаторОбъектаМетаданных = ИдентификаторОбъектаМетаданных(ФайлОбъектаМетаданных);
		
		ДобавитьОбъектВКеш(ПутьКИсходнымФайлам, ИдентификаторОбъектаМетаданных, КаталогОбъектаМетаданных);
		
		Если ИдентификаторОбъектаМетаданных = ИдентификаторПрограммногоМодуля Тогда
			Результат = КаталогОбъектаМетаданных;
			Прервать;
		КонецЕсли;
		
	КонецЦикла;

	Возврат Результат;

КонецФункции

Функция НайтиПодчиненныйОбъектМетаданных(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля,
	ФайлОбъектаМетаданных, ИмяПодКаталога, ЛокальноеИмяТипа)

	Результат = Неопределено;

	ПодчиненныеОбъектыМетаданных = ПодчиненныеОбъектыМетаданных(ФайлОбъектаМетаданных, ЛокальноеИмяТипа);
	Для Каждого КлючИЗначение Из ПодчиненныеОбъектыМетаданных Цикл

		ИдентификаторОбъектаМетаданных = КлючИЗначение.Значение;
		ИмяОбъектаМетаданных           = КлючИЗначение.Ключ; 

		ИмяКаталогаПерерасчета = ОбъединитьПути(ФайлОбъектаМетаданных.Путь, ИмяПодКаталога, ИмяОбъектаМетаданных);
		КаталогОбъектаМетаданных = Новый Файл(ИмяКаталогаПерерасчета);
		
		ДобавитьОбъектВКеш(ПутьКИсходнымФайлам, ИдентификаторОбъектаМетаданных, КаталогОбъектаМетаданных);
		
		Если ИдентификаторОбъектаМетаданных = ИдентификаторПрограммногоМодуля Тогда
			Результат = КаталогОбъектаМетаданных;
		КонецЕсли;

	КонецЦикла;

	Возврат Результат;

КонецФункции

#Область РаботаСКешем

Функция КлючКеша(ИдентификаторОбъектаМетаданных, ПутьКИсходнымФайлам)
	Возврат СтрШаблон("%1+%2", ИдентификаторОбъектаМетаданных, ПутьКИсходнымФайлам);
КонецФункции

Процедура ДобавитьОбъектВКеш(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля, ЗначениеФайл)

	КлючКеша = КлючКеша(ИдентификаторПрограммногоМодуля, ПутьКИсходнымФайлам);
	Если КешКаталогов.Получить(КлючКеша) = Неопределено Тогда
		КешКаталогов.Вставить(КлючКеша, ЗначениеФайл);
	КонецЕсли;

КонецПроцедуры 

Функция ПолучитьОбъектИзКеша(ПутьКИсходнымФайлам, ИдентификаторПрограммногоМодуля)
	КлючКеша = КлючКеша(ИдентификаторПрограммногоМодуля, ПутьКИсходнымФайлам);
	Возврат КешКаталогов.Получить(КлючКеша);
КонецФункции

#КонецОбласти

#КонецОбласти

КешКаталогов = Новый Соответствие;