﻿
#Область ОбработчикиСобытий

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	ОбъектОбработки = РеквизитФормыВЗначение("Объект");
	ОбъектОбработки.ТестовыйВызов();
КонецПроцедуры

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	ЭтотОбъект.Закрыть();
КонецПроцедуры

#КонецОбласти
