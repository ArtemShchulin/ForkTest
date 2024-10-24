Функция СведенияОВнешнейОбработке() Экспорт
	
	ИмяОбработки = Метаданные().Представление();
	
	Структура = Новый Структура;
	Структура.Вставить("Вид",             "ДополнительнаяОбработка"); 
	Структура.Вставить("Наименование",    ИмяОбработки);
	Структура.Вставить("Версия",          "1.01");
	Структура.Вставить("БезопасныйРежим", Ложь);
	Структура.Вставить("Информация",      "");
	
	Команды = Новый ТаблицаЗначений;
	Команды.Колонки.Добавить("Идентификатор");
	Команды.Колонки.Добавить("Представление");
	Команды.Колонки.Добавить("Модификатор");
	Команды.Колонки.Добавить("ПоказыватьОповещение");
	Команды.Колонки.Добавить("Использование");
	
	НоваяСтрока = Команды.Добавить();
	НоваяСтрока.Идентификатор = ИмяОбработки;
	НоваяСтрока.Представление = ИмяОбработки;
	НоваяСтрока.Модификатор   = "";
	НоваяСтрока.ПоказыватьОповещение = Ложь;
	НоваяСтрока.Использование = "ОткрытиеФормы";
	
	
	Структура.Вставить("Команды", Команды);
	
	Назначение = Новый Массив;  
	Структура.Вставить("Назначение", Назначение);
	
	Возврат Структура;
	
КонецФункции