﻿
#Область СлужебныйПрограммныйИнтерфейс

Процедура ПриНачалеРаботыСистемы() Экспорт
	
	ВызватьМодульМенеджера();
	ВызватьМодульОбъекта();
	
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Процедура ВызватьМодульМенеджера()
	
	Обработки.Обработка1.ТестовыйВызов();
	РегистрыСведений.РегистрСведений1.ТестовыйВызов();
	
КонецПроцедуры

Процедура ВызватьМодульОбъекта()
	
	ПланыОбмена.ПланОбмена1.СоздатьУзел().ТестовыйВызов();
	Справочники.Справочник1.СоздатьЭлемент().ТестовыйВызов();
	Документы.Документ1.СоздатьДокумент().ТестовыйВызов();
	Обработки.Обработка1.Создать().ТестовыйВызов();
		
КонецПроцедуры

#КонецОбласти
