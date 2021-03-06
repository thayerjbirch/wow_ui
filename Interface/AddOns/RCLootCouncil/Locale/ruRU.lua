-- Translate RCLootCouncil to your language at:
-- http://wow.curseforge.com/addons/rclootcouncil/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("RCLootCouncil", "ruRU")
if not L then return end

L[" is not active in this raid."] = "не участвует в текущем рейде."
L[" you are now the Master Looter and RCLootCouncil is now handling looting."] = "вы теперь Ответственный за Добычу и RCLootCouncil теперь занимается распределением добычи."
L["Abort"] = "Сбросить"
L["Accept Whispers"] = "Принимать Личные сообщения"
L["add"] = "добавить"
L["Add Note"] = "Добавить Заметку"
L["Add ranks"] = "Добавить ранки"
L["All items"] = "Все предметы"
L["Announce Awards"] = "Анонсировать Врученные предметы"
L["Anonymous Voting"] = "Анонимное Голосование"
L["anonymous_voting_desc"] = "Включить анонимное голосование (т.е. люди не видят кто за что проголосовал)"
L["Auto Award"] = "Автоматическое Вручение"
L["Auto Award to"] = "Автоматически Вручать"
L["auto_award_desc"] = "Включить автоматическое распределение"
L["auto_award_to_desc"] = "Игроки для автоматического распределения. Список игроков для выбора появляется если вы в рейдовой группе."
L["Autopass"] = "Автопас"
L["Award Reasons"] = "Причина Вручения"
L["award_reasons_desc"] = [=[Причины вручения, которые не могут быть выбраны во время ролла.
Используется при изменении ответа в меню по правой кнопки мыши, и для автоматического вручения.]=]
L["Awards"] = "Награды"
L["Banking"] = "В банк"
L["Button"] = "Кнопка"
L["Candidate didn't respond on time"] = "Кандидат не ответил вовремя"
L["Candidate is selecting response, please wait"] = "Кандидат делает выбор, пожалуйста подождите"
L["Candidate removed"] = "Кандидат удален"
L["Changing loot threshold to enable Auto Awarding"] = "Измените порог распределения добычи, чтобы включить Автоматическое Вручение"
L["Changing LootMethod to Master Looting"] = "Разделение добычи производится по системе Ответственный за добычу."
L["config"] = "настройка"
L["council"] = "совет"
L["current_council_desc"] = "Нажмите, чтобы удалить определенных людей из совета"
L["days and x months"] = "%s и %d месяцев."
L["days, x months, y years"] = "%s, %d месяцев и %d лет."
L["Disenchant"] = "Распыление"
L["DPS"] = "УВС"
L["enable_loot_history_desc"] = "Включает ведение истории. RCLootCouncil не будет ничего записывать если отключено."
L["Free"] = "Бесплатно"
L["g1"] = "п1"
L["g2"] = "п2"
L["Greed"] = "Не откажусь"
L["group_council_members_desc"] = "Используйте это, чтобы добавить членов совета с другого сервера или гильдии."
L["group_council_members_head"] = "Добавить члена совета из текущей группы."
L["Healer"] = "Целитель"
L["help"] = "помощь"
L["Hide Votes"] = "Скрыть Голоса"
L["hide_votes_desc"] = "Только проголосовавшие игроки могут видеть результаты голосования"
L["history"] = "история"
L["ilvl"] = "илвл"
L["ilvl: x"] = "илвл: %d"
L["Items under consideration:"] = "Предметы, ожидающие рассмотрения:"
L["Loot announced, waiting for answer"] = "Добыча объявлена, ожидание ответа"
L["Lower Quality Limit"] = "Нижняя Граница Качества"
L["lower_quality_limit_desc"] = [=[Выберите нижний предел качества для автораспределения (это качество включается!).
Примечание: Это отменяет нормальный порог лута.]=]
L["Mainspec/Need"] = "Основной спек/Нужно"
L["Minor Upgrade"] = "Незначительное улучшение"
L["ML sees voting"] = "МЛ видит результаты голосования"
L["Multi Vote"] = "Множественное голосование"
L["Need"] = "Нужно"
L["No"] = "Нет"
L["None"] = "Никто"
L["Not announced"] = "Не анонсированно"
L["Number of reasons"] = "Количество причин"
L["Offline or RCLootCouncil not installed"] = "Вышел из сети или RCLootCouncil не установлен"
L["Offspec/Greed"] = "Оффспек/Не откажусь"
L["open"] = "открыть"
L["Pass"] = "Пас"
L["Reason"] = "Причина"
L["Reset to default"] = "Восстановить по умолчанию"
L["Self Vote"] = "Своё голосование"
L["Something went wrong :'("] = "Что-то пошло не так :'("
L["Start"] = "Начать"
L["Tank"] = "Танк"
L["Test"] = "Тест"
L["test"] = "тест"
L["Text color"] = "Цвет текста"
L["Text for reason #i"] = "Текст причины #"
L["The Master Looter doesn't allow multiple votes."] = "Ответственный за добычу не разрешил голосование за нескольких."
L["The Master Looter doesn't allow votes for yourself."] = "Ответственный за добычу не разрешил голосовать за себя."
L["This item"] = "Этот предмет"
L["This item has been awarded"] = "Этот предмет был вручен"
L["Unguilded"] = "Не в гильдии"
L["Upper Quality Limit"] = "Лимит улучшения качества"
L["version"] = "версия"
L["Voting options"] = "Опции голосования"
L["whisper"] = "шепот"
L["whisper_help"] = [=[Рейдеры могут использовать систему личных сообщений, в случае если кто-то не имеет аддона.
Шепнув "rchelp" ответственному за добычу, они получат список ключевых слов, который может быть изменен в меню "Кнопки и Ответы".
Ответственному за добычу рекомендуется включить "Анонс Сообщений" для каждого предмета, потому что номер каждого предмета необходим для использования системы личных сообщений.
Примечание: Людям следует устанавливать аддон, в противном случае об игроке будет доступна не вся информация.]=]
L["Yes"] = "Да"
L["You are not allowed to see the Voting Frame right now."] = "Вы не можете видеть окно голования прямо сейчас."
