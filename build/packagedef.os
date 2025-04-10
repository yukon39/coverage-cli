
#Использовать "../internal/utils"

#Область ОбработчикиСобытий

Процедура ПередСборкой(Знач РабочийКаталог) Экспорт

    КаталогСценария = ТекущийСценарий().Каталог;
    КаталогПроекта = ОбъединитьПути(КаталогСценария, "..", "..");
    Файл = Новый Файл(КаталогПроекта);
    КаталогПроекта = Файл.ПолноеИмя;
 
    КаталогВнешнихПоставщиков = ОбъединитьПути(КаталогПроекта, "vendor");
    
    СкачатьПоставляемыйCoverage41C();
   
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Процедура СкачатьПоставляемыйCoverage41C()
    
    ВерсияCoverage41C = ПараметрыПриложения.ВерсияCoverage41C();
    КаталогCoverage41C = ПараметрыПриложения.КаталогCoverage41C();

    Файл = Новый Файл(КаталогCoverage41C);
    Если Файл.Существует() Тогда
        Возврат;
    КонецЕсли;

    ИмяРепозитория = "1c-syntax/Coverage41C";
    НомерРелиза    = СтрШаблон("v%1", ВерсияCoverage41C);
    ИмяРесурса     = СтрШаблон("Coverage41C-%1.zip", ВерсияCoverage41C);

    ВременныйФайл = ПолучитьИмяВременногоФайла("zip");

    СкачатьРесурсРелизаGitHub(ИмяРепозитория, НомерРелиза, ИмяРесурса, ВременныйФайл);

    ЧтениеZip = Новый ЧтениеZipФайла(ВременныйФайл);
    ЧтениеZip.ИзвлечьВсе(ОбъединитьПути(КаталогCoverage41C, ".."));
    ЧтениеZip.Закрыть();

    УдалитьФайлы(ВременныйФайл);

КонецПроцедуры

Процедура СкачатьРесурсРелизаGitHub(ИмяРепозитория, НомерРелиза, ИмяРесурса, ИмяФайла)
    
    АдресРесурса = СтрШаблон("%1/releases/download/%2/%3", ИмяРепозитория, НомерРелиза, ИмяРесурса);
    HTTPСоединение = Новый HTTPСоединение("https://github.com", , , , , 300);
    HTTPЗапрос = Новый HTTPЗапрос(АдресРесурса);
    HTTPСоединение.Получить(HTTPЗапрос, ИмяФайла);

КонецПроцедуры

#КонецОбласти

Описание.Имя("coverage-cli")
		.Версия(ПараметрыПриложения.ВерсияПриложения())
        .Описание("Консольное приложение для работы с покрытием")
        .ВерсияСреды("1.9.2")
		.ЗависитОт("cli")
        .ЗависитОт("logos")
        .ЗависитОт("1commands")
        .ЗависитОт("configor")
        .ЗависитОт("fs")
        .ЗависитОт("asserts")
        .ЗависитОт("yabr", "0.6.2")
        .ВключитьФайл("cmd")
        .ВключитьФайл("configs")
        .ВключитьФайл("examples")
        .ВключитьФайл("pkg")
        .ВключитьФайл("internal")
        .ВключитьФайл("vendor")
        .ВключитьФайл("README.md")
        .ОпределяетКласс("Конвертер", "pkg/converter/Классы/Конвертер.os")
        .ОпределяетМодуль("ФорматыИсходныхФайлов", "pkg/converter/Модули/ФорматыИсходныхФайлов.os")
        .ОпределяетКласс("ПокрытиеGenericCoverage", "pkg/genericCoverage/Классы/ПокрытиеGenericCoverage.os")
        .ОпределяетКласс("МенеджерПокрытияEDT", "pkg/edtcoverage/Классы/МенеджерПокрытияEDT.os")
        .ИсполняемыйФайл("cmd/main.os")
;
