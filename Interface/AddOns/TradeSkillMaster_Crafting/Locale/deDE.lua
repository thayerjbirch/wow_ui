-- ------------------------------------------------------------------------------------- --
-- 					TradeSkillMaster_Crafting - AddOn by Sapu94							 	  	  --
--   http://wow.curse.com/downloads/wow-addons/details/tradeskillmaster_crafting.aspx    --
--																													  --
--		This addon is licensed under the CC BY-NC-ND 3.0 license as described at the		  --
--				following url: http://creativecommons.org/licenses/by-nc-nd/3.0/			 	  --
-- 	Please contact the author via email at sapu94@gmail.com with any questions or		  --
--		concerns regarding this license.																	  --
-- ------------------------------------------------------------------------------------- --

-- TradeSkillMaster_Crafting Locale - deDE
-- Please use the localization app on CurseForge to update this
-- http://wow.curseforge.com/addons/TradeSkillMaster_Crafting/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("TradeSkillMaster_Crafting", "deDE")
if not L then return end

L["AH"] = "AH"
L["All"] = "Alle"
L["A loop was detected in the mat cost of %s. Please correct this in your settings. This is typically caused by having 'crafting' in the custom price of two mats which can be crafted into each other."] = "Eine Schleife wurde in den Materialkosten von %s entdeckt. Bitte behebe dieses Problem in deinen Einstellungen. Vermutlich benutzt du das Schlüsselwort 'crafting' in den benutzerdefinierten Preisen der beiden Materialien, die sich gegenseitig herstellen können."
L["Always Buy from AH"] = "Immer im AH kaufen"
L["A minimum profit of 0g is not allowed."] = "Ein Mindestgewinn von 0g ist nicht erlaubt."
L["Are you sure you want to reset all material prices to the default value?"] = "Willst du wirklich alle Materialpreise auf den Standardwert zurücksetzen?"
L["Are you sure you want to reset the 'Default Craft Value Method' back to the default value?"] = "Willst du wirklich die 'Standardmethode für Herstellungswert' auf den Standardwert zurücksetzen?"
L["Are you sure you want to reset the 'Default Material Cost Method' back to the default value?"] = "Willst du wirklich die 'Standardmethode für Materialkosten' auf den Standardwert zurücksetzen?"
L["Ask Later"] = "Später nachfragen"
L["Auction House"] = "Auktionshaus"
L["Bags"] = "Tschn"
L[ [=[Below is a list of crafts that have been smartly added. You can configure what crafts are listed here in the "Cooldowns" tab of the "Crafting" page within the main TSM window. Quest items can be removed through the TSM crafting options.

Simply click on the row in the table below to craft it.]=] ] = [=[Die hier gezeigte Liste enthält Rezepte, die du im Abklingzeiten-Tab auf der Crafting-Seite via Smart-Spalte aktiviert hast. Quest-Items können mit den Crafting-Optionen entfernt werden.

Klicke unten auf ein Rezept, um die Herstellung zu beginnen.]=]
L["Buy From AH"] = "Im AH kaufen"
L["Buy From Vendor"] = "Beim Händler kaufen"
L["Buy Items"] = "Items kaufen"
L["Buy Vendor Items"] = "Händler-Items kaufen"
L["Can Craft At Least One, Profit, Craftable Quantity"] = "Mindestens eins herstellbar, Gewinn, Herstellbare Menge"
L[" (CD)"] = " (Abklingzeit)"
L["|cffff0000[Filtered]|r "] = "|cffff0000[Gefiltert]|r "
L["Changes the scale of the profession frame."] = "Ändert die Skalierung des Berufsfensters."
L[ [=[Changes the scale of the profession frame. 

Open the profession window to enable.]=] ] = [=[Ändert die Skalierung des Berufsfensters. 

Das Berufsfenster muss geöffnet sein.]=]
L["Characters"] = "Charaktere"
L["Characters (Bags/Bank/AH/Mail) to Ignore:"] = "Ignoriere Chars (Taschen/Bank/AH/Briefk):"
L["Clear Filters"] = "Filter löschen"
L["Clear Queue"] = "Leeren"
L["Click here to restock the selected groups based on their Crafting operations."] = "Klicke hier, um die ausgewählten Gruppen auf Basis ihrer Crafting-Operationen neu aufzufüllen."
L["Clicking this button will gather the required materials when you are at a valid source, the text of the button will change according to source."] = "Dieser Button wird die benötigten Materialien sammeln, wenn du bei einer gültigen Sammelquelle bist. Der Text in diesem Button ändert sich je nach Sammelquelle."
L["Click this button to stop gathering and close the window."] = "Klicke auf diesen Button, um das Sammeln zu beenden und das Fenster zu schließen."
L["Conversions"] = "Umwandlungen"
L["Convert"] = "Umwandeln"
L["Cooldowns"] = "Abklingzeiten"
L["Cost"] = "Kosten"
L["Could not get link for profession."] = "Berufslink konnte nicht ermittelt werden."
L["Craftable"] = "Herstellbar"
L["Craftable Quantity, Profit"] = "Herstellbare Menge, Gewinn"
L["Crafter"] = "Hersteller"
L["Crafting can automatically prompt you to craft your cooldowns when you open the profession with the necessary materials on-hand or automatically add them to your queue if you don't have the necessary materials on-hand. Click on rows below to toggle this smart behavior on/off for your cooldowns."] = "Crafting kann automatisch nachfragen, ob du deine abklingzeit-basierten Rezepte herstellen willst, sobald du das Berufsfenster mit den notwendigen Materialien öffnest, oder ob sie automatisch zu deiner Warteschlange hinzugefügt werden sollen, falls die notwendigen Materialien fehlen. Klicke auf die Reihen unten, um dieses automatische Verhalten ein- oder auszuschalten."
L["Crafting can automatically prompt you to craft your quest required items when you open the profession with the necessary materials on-hand or automatically add them to your queue if you don't have the necessary materials on-hand."] = "Crafting kann automatisch nachfragen, ob du Rezepte für eine Quest herstellen willst, sobald du das Berufsfenster mit den notwendigen Materialien öffnest, oder ob sie automatisch zu deiner Warteschlange hinzugefügt werden sollen, falls die notwendigen Materialien fehlen."
L["Crafting Cost"] = "Herstellkosten"
L["Crafting failed to scan your profession. Please close and re-open it to to allow Crafting to scan and provide pricing info for this profession."] = "Crafting konnte deinen Beruf nicht scannen. Bitte schließe und öffne das Berufsfenster erneut, damit Crafting Preisinformationen für diesen Beruf scannen und bereitstellen kann."
L["Crafting Material Cost"] = "Herstellungsmaterialkosten"
L["Crafting operations contain settings for restocking the items in a group. Type the name of the new operation into the box below and hit 'enter' to create a new Crafting operation."] = "Crafting-Operationen enthalten Einstellungen zum Auffüllen von Gegenständen in einer Gruppe. Trage den Namen der neuen Operation in das Eingabefeld unten ein und drücke ENTER, um eine neue Crafting-Operation zu erstellen."
L["Crafting will not queue any items affected by this operation with a profit below this value. As an example, a min profit of 'max(10g, 10% crafting)' would ensure a profit of at least 10g or 10% of the craft cost, whichever is highest."] = "Crafting wird keine Items, die von dieser Operation betroffen sind, mit einem Gewinn unterhalb dieses Wertes in die Warteschlange setzen. Zum Beispiel würde ein Mindestgewinn von 'max(10g, 10% crafting)' sicherstellen, dass ein Gewinn von mindestens 10g oder 10 % der Herstellungskosten gemacht wird, je nachdem welcher Gewinn höher ausfällt."
L["Craft Name"] = "Name des Rezepts"
L["Craft Next"] = "Nächstes herstellen"
L["Craft Queue"] = "Herstellungswarteschlange"
L["Crafts"] = "Rezepte"
L["Craft Value Method"] = "Methode für Herstellungskosten"
L["Created profession group for %s."] = "Berufsgruppe für %s erstellt."
L["Create Profession Groups"] = "Berufsgruppen erstellen"
L["Current Source"] = "Aktuelle Sammelquelle"
L["Custom Price"] = "Benutzerdefinierter Preis"
L["Custom Price for this item."] = "Benutzerdefinierter Preis für dieses Item."
L["Custom Price per Item"] = "Benutzerdefinierter Preis pro Item"
L["Default Craft Value Method"] = "Standardmethode für Herstellungskosten"
L["Default Material Cost Method"] = "Standardmethode für Materialkosten"
L["Default Price"] = "Standardpreis"
L["Default Price Settings"] = "Standardpreis-Einstellungen"
L["Disable Crafting AH Search"] = "Crafting-AH-Suche deaktivieren"
L["Disable DE Search"] = "Entz.-Suche deaktivieren"
L["Enable Smart Crafting for Quests"] = "Auto-Herstellen für Quests aktivieren"
L["Enchant Vellum"] = "Verzauberungspergament"
L[ [=[Estimated Cost: %s
Estimated Profit: %s]=] ] = [=[Vorrausichtliche Kosten: %s
Vorrausichtlicher Gewinn: %s]=]
L["Even Stacks Only"] = "Nur gleichmäßige Stapel"
L["Exclude Crafts with a Cooldown from Craft Cost"] = "Rezepte mit Abklingzeit bei den Herstellungskosten ignorieren"
L["Filters >>"] = "Filter >>"
L["Finished Gathering"] = "Sammeln abgeschlossen"
L["First select a crafter"] = "Wähle zuerst einen Hersteller aus"
L["From "] = "Von "
L["Gather"] = "Sammeln"
L["Gathering"] = "Sammeln"
L["Gathering Crafting Mats"] = "Sammle Herstellungsmaterialien."
L["Gather Items"] = "Items sammeln"
L["General"] = "Allgemein"
L["General Settings"] = "Allgemeine Einstellungen"
L["Guilds (Guild Banks) to Ignore:"] = "Ignoriere Gilden (Gildenbanken):"
L["Have Mats"] = "Material vorhanden"
L["Here, you can select which of your TSM groups you would like to restock based on their Crafting operations."] = "Hier kannst du entscheiden, welche von deinen TSM-Gruppen auf Basis ihrer Crafting-Operationen aufgefüllt werden sollen."
L["Here you can view and adjust how Crafting is calculating the price for this material."] = "Hier kannst du sehen und anpassen, wie Crafting den Preis für dieses Material berechnen soll."
L["Hide Queue"] = "<< Warteschlange"
L["Hold the left mouse button down and drag this handle to resize the window."] = "Halte die linke Maustaste gedrückt und ziehe dieses Dreieck, um das Fenster kleiner/größer zu machen."
L["If checked, if there is more than one way to craft the item then the craft cost will exclude any craft with a daily cooldown when calculating the lowest craft cost."] = "Wenn aktiviert, werden, sofern es mehr als eine Möglichkeit zum Herstellen des Items gibt, Rezepte mit täglicher Abklingzeit beim Berechnen der niedrigsten Herstellungskosten ignoriert."
L["If checked, only crafts which you can craft with items in your bags (ignoring vendor items) will be shown below."] = "Wenn aktiviert, werden unten nur Rezepte angezeigt, die du mit den Items in deinen Taschen herstellen kannst (Händler-Items werden ignoriert)."
L["If checked, the crafting cost of items will be shown in the tooltip for the item."] = "Wenn aktiviert, werden die Herstellungskosten der Items im Item-Tooltip angezeigt."
L["If checked, the material cost of items will be shown in the tooltip for the item."] = "Wenn aktiviert, werden die Materialkosten der Items im Item-Tooltip angezeigt."
L["If checked, the mats needed to craft an item and their prices will be shown in item tooltips."] = "Wenn aktiviert, werden die benötigten Materialien zum Herstellen eines Items und deren Preise im Item-Tooltip angezeigt."
L["If enabled, buying from AH will always be suggested even if you have enough via other sources. If disabled only short items will be searched for at the AH"] = "Wenn aktiviert, wird das Kaufen im AH immer vorgeschlagen, selbst wenn du genug bei anderen Sammelquellen bekommen würdest. Wenn deaktiviert, werden nur fehlende Items im AH gesucht."
L["If enabled the crafting search at the Auction House will ignore Disenchantable Items."] = "Wenn aktiviert, wird die Crafting-Suche im AH entzauberbare Items ignorieren."
L["If enabled the crafting search will only search for multiples of 5."] = "Wenn aktiviert, wird die Crafting-Suche nur nach Items suchen, deren Stapelgröße durch 5 teilbar ist."
L["Ignore Alts"] = "Twinks ignorieren"
L["Ignore Intermediate Crafting"] = "Zwischenschritte ignorieren"
L["Ink Trader"] = "Tintenhändler"
L["Intermediate Craft"] = "Zwischenschritt"
L["Intermediate Crafting"] = "Zwischenschritte"
L["Inventory Settings"] = "Inventareinstellungen"
L["Item Name"] = "Name des Items"
L["Items will only be added to the queue if the number being added is greater than this number. This is useful if you don't want to bother with crafting singles for example."] = "Items werden nur zur Warteschlange hinzufügt, wenn die hinzuzufügende Menge größer als diese Zahl ist. Dies ist beispielsweise praktisch, um die Herstellung einzelner Items zu vermeiden."
L["Item Value"] = "Wert des Items"
L["Left-Click|r to add this craft to the queue."] = "Linksklick|r, um dieses Rezept in die Warteschlange zu setzen."
L["Left click will set max quantity as quantity required"] = "Linksklick, um die Maximalmenge als benötigte Menge zu setzen"
L["Link"] = "Link"
L["List Mats in Tooltip"] = "Materialien im Tooltip auflisten"
L["Mail From "] = "Post von "
L["Mailing Craft Mats to %s"] = "Sende Herstellungsmaterialien zu %s"
L["Mail Items"] = "Items senden"
L["Mail To "] = "Sende Post zu "
L["Mat Cost"] = "Materialkosten"
L["Material Cost Options"] = "Materialkosten-Optionen"
L["Material Name"] = "Name des Materials"
L["Materials"] = "Materialien"
L["Materials:"] = "Materialien:"
L["Mat Price"] = "Materialpreis"
L["Max Restock Quantity"] = "Maximale Auffüllmenge"
L["Minimum Profit"] = "Mindestgewinn"
L["Min Restock Quantity"] = "Minimale Auffüllmenge"
L["Name"] = "Name"
L["Need"] = "Bedarf"
L["No Auctions found for %s"] = "Keine Auktionen für %s gefunden."
L["No item specified. Usage: /tsm restock_help [ITEM_LINK]"] = "Kein Item angegeben. Korrekte Anwendung: /tsm restock_help [ITEM_LINK]"
L["<None>"] = "<Nichts>"
L["None Found"] = "Nichts gefunden"
L["No Thanks"] = "Nein, Danke"
L["Nothing to Gather"] = "Nichts zu sammeln"
L["Nothing To Gather"] = "Nichts zu sammeln"
L["Nothing to Mail"] = "Nichts zu versenden"
L["Num Owned"] = "In Besitz"
L["Once a crafter and profession(s) are selected, Click this button to start gathering."] = "Sobald Hersteller und Beruf(e) ausgewählt wurden, kann dieser Button gedrückt werden, um das Sammeln zu starten."
L["Once a crafter is selected, you can use this dropdown to select the profession(s) you want to gather for."] = "Sobald ein Hersteller ausgewählt wurde, kannst du diesen Dropdown benutzen, um einen oder mehrere Berufe auszuwählen, für die gesammelt werden soll."
L["Opens the Crafting window to the first profession."] = "Öffnet das Crafting-Fenster des ersten Berufs."
L["Operation"] = "Operation"
L["Override Default Craft Value Method"] = "Standardmethode für Herstellungskosten überschreiben"
L["Override global options for the session"] = "Globale Optionen für diese Session überschreiben"
L["Percent to subtract from buyout when calculating profits (5% will compensate for AH cut)."] = "Der Prozentsatz, der bei der Gewinnberechnung vom Sofortkaufpreis abgezogen werden soll (5% decken die AH-Kosten)."
L["Perform a manual AH search for this item"] = "Manuelle AH-Suche für dieses Item durchführen"
L["Player"] = "Spieler"
L["Please switch to the Shopping Tab at the AH to perform the gathering search."] = "Bitte öffne den Shopping-Tab im AH, um die Sammelsuche durchzuführen."
L["Please switch to the Shopping Tab to perform the gathering search."] = "Bitte öffne den Shopping-Tab, um die Sammelsuche durchzuführen."
L["Price:"] = "Preis:"
L["Price Settings"] = "Preiseinstellungen"
L["Price Source Filter"] = "Preisquellenfilter"
L["Profession"] = "Beruf"
L["Profession Filter"] = "Berufsfilter"
L["Profession Frame Scale"] = "Skalierung des Berufsfensters"
L["Professions"] = "Berufe"
L["Professions Used In"] = "In Berufe benutzt"
L["Profit"] = "Gewinn"
L["Profit, Craftable Quantity"] = "Gewinn, Herstellbare Menge"
L["Profit Deduction"] = "Gewinnabzug"
L["Profit (Total Profit):"] = "Gewinn (Gesamtgewinn):"
L["Prospect"] = "Sondiere"
L["Queue"] = "Warteschlange"
L["Queue Increment"] = "Warteschlangenzuwachs"
L["Queue Sorting Method"] = "Sortierungsmethode für Warteschlange"
L["Ready"] = "Bereit"
L["Reset All Custom Prices to Default"] = "Alle benutzerdefinierten Preise auf Standardwerte zurücksetzen"
L["Reset all Custom Prices to Default Price Source."] = "Alle benutzerdefinierten Preise auf vordefinierte Preisquellen zurücksetzen."
L["Reset Craft Value Method to Default"] = "Methode für Herstellungskosten auf Standardwert zurücksetzen"
L["Reset Material Cost Method to Default"] = "Methode für Materialkosten auf Standardwert zurücksetzen"
L["Resets the material price for this item to the defualt value."] = "Materialpreis für dieses Item auf Standardwert zurücksetzen."
L["Reset the Craft Value Method to the default TSM value."] = "Methode für Herstellungskosten auf vordefinierten TSM-Wert zurücksetzen."
L["Reset the Material Cost Method to the default TSM value."] = "Methode für Materialkosten auf vordefinierten TSM-Wert zurücksetzen."
L["Reset to Default"] = "Auf Standardwert zurücksetzen"
L["Restock help for %s:"] = "Aufüllhilfe für %s:"
L["Restocking to a max of %d (min of %d) with a min profit."] = "Fülle bis zu einem Maximum von %d auf (mindestens %d), mit einem Minimalgewinn."
L["Restocking to a max of %d (min of %d) with no min profit."] = "Fülle bis zu einer Maximum von %d auf (mindestens %d), ohne Minimalgewinn."
L["Restock Quantity Settings"] = "Auffüllmenge-Einstellungen"
L["Restock Selected Groups"] = "Ausgewählte Gruppe auffüllen"
L["Restock Settings"] = "Auffüll-Einstellungen"
L["Retrieve From "] = "Hole von "
L["Right-Click|r to subtract this craft from the queue."] = "Rechtsklick|r, um dieses Rezept aus der Warteschlange zu entfernen."
L["Right click will search with no max quantity"] = "Rechtsklick, um die Suche ohne Maximalmenge durchzuführen"
L["Search"] = "Suchen"
L["Selection"] = "Auswahl"
L["Select one of your characters' professions to browse."] = "Wähle einen Beruf deines Charakters aus, der hier angezeigt werden soll."
L["Select profession(s) and click start"] = "Beruf(e) auswählen und auf Start klicken."
L["Set Minimum Profit"] = "Mindestgewinn setzen"
L["Shift-Left-Click|r to queue all you can craft."] = "Umschalt-Linksklick|r, um alles, was hergestellt werden kann, in die Warteschlange zu setzen."
L["Shift-Right-Click|r to remove all from queue."] = "Umschalt-Rechtsklick, um alles aus der Warteschlange zu entfernen."
L["Show Crafting Cost in Tooltip"] = "Herstellkosten im Tooltip anzeigen"
L["Show Material Cost in Tooltip"] = "Zeige Materialkosten im Tooltip an"
L["Show Queue"] = "Warteschlange >>"
L["'%s' is an invalid operation! Min restock of %d is higher than max restock of %d."] = "'%s' ist eine ungültige Operation! Minimale Auffüllmenge von %d ist höher als maximale Auffüllmenge von %d."
L["Skip Smart Crafts and Continue to Profession"] = "Smart-Rezepte überspringen und weiter zum Beruf"
L["Smart"] = "Smart"
L["Smart Crafts"] = "Smart-Rezepte"
L["Sources"] = "Sammelquellen"
L["%s (%s profit)"] = "%s (%s Gewinn)"
L["Start Gathering"] = "Sammeln starten"
L["Status"] = "Status"
L["Stop Gathering"] = "Sammeln stoppen"
L["Tells you why a specific item is not being restocked and added to the queue."] = "Teilt dir mit, warum ein bestimmtes Item nicht aufgefüllt und in die Warteschlange gesetzt wird."
L["The 'Craft Value Method' (%s) did not return a value for this item. If it is based on some price database (AuctionDB, TSM_WoWuction, TUJ, etc), then ensure that you have scanned for or downloaded the data as appropriate."] = "Die 'Methode für Herstellungskosten' (%s) gab keinen Wert für dieses Item zurück. Wenn sie auf irgendeine Preisdatenbank (AuctionDB, TSM_WoWuction, TUJ, etc.) basiert, musst du sicherstellen, dass die Daten je nach Bedarf gescannt oder heruntergeladen sind."
L["The min profit (%s) did not evalulate to a valid value for this item."] = "Der Mindestgewinn (%s) ergab keinen gültigen Wert für dieses Item."
L["The number which would be queued (%d) is less than the min restock quantity (%d)."] = "Die Menge (%d), die in die Warteschlange gesetzt werden soll, ist kleiner als die min. Auffüllmenge (%d)."
L["The operation applied to this item is invalid! Min restock of %d is higher than max restock of %d."] = "Die mit dem Item verbundene Operation ist ungültig! Die min. Auffüllmenge von %d ist höher als max. Auffüllmenge von %d."
L["The profit of this item (%s) is below the min profit (%s)."] = "Der Gewinn für dieses Items (%s) ist unterhalb des Mindestgewinns (%s)."
L["The queue will be sorted based on this option, from left to right."] = "Die Warteschlange wird mit dieser Option sortiert, von links nach rechts."
L["There is a crafting cost and crafted item value, but TSM_Crafting wasn't able to calculate a profit. This shouldn't happen!"] = "Es gibt Herstellungskosten und Preis des hergestellten Items, aber TSM_Crafting konnte den Gewinn nicht berechnen. Das sollte nicht passieren!"
L["There is no TSM_Crafting operation applied to this item's TSM group (%s)."] = "Es ist keine einzige TSM_Crafting-Operation mit der TSM-Gruppe des Items (%s) verbunden."
L["This area of the profession tab works similarly to the default profession UI, but with some added features. These include the ability to easily add crafts to your queue, listing profit next to crafts, and displaying inventory information."] = "Dieser Bereich im Berufs-Tab ist funktional identisch zum Standard-Berufs-UI, aber mit zusätzlichen Features, wie z. B. ein einfaches Einfügen von Rezepten in deine Warteschlange, das Auflisten des Gewinns neben den Rezepten und das Anzeigen von Inventarinformationen."
L["This button will automatically create some simple TSM groups based on the current profession."] = "Dieser Button wird automatisch ein paar einfache TSM-Gruppen für den aktuellen Beruf erstellen."
L["This button will switch to the default profession UI. You can switch back by clicking a 'TSM' button at the top of the default profession UI."] = "Dieser Button wird auf das Standard-Berufs-UI wechseln. Um wieder zurück zu wechseln, musst du im Standard-Berufs-UI oben auf einen TSM-Button klicken."
L["This button will switch to the default profession UI. You can switch back by clicking the 'TSM' button at the top of the default profession UI."] = "Dieser Button wird auf das Standard-Berufs-UI wechseln. Um wieder zurück zu wechseln, musst du im Standard-Berufs-UI oben auf den TSM-Button klicken."
L["This displays the available sources for each item that is required as per your session settings"] = "Hier werden die verfügbaren Sammelquellen für jedes Item angezeigt, die benötigt werden."
L["This displays the tasks that you need to perform to gather the required materials from the selected sources."] = "Hier werden Aufgaben angezeigt, die ausgeführt werden müssen, um die benötigten Materialien bei den ausgewählten Sammelquellen zu sammeln."
L["This is the default method Crafting will use for determining material cost."] = "Diese Methode wird von Crafting standardmäßig benutzt, um die Materialkosten zu bestimmen."
L["This is the default method Crafting will use for determining the value of crafted items."] = "Diese Methode wird von Crafting standardmäßig benutzt, um den Wert des Herstell-Items zu bestimmen."
L["This item does not have a crafting cost. Check that all of its mats have mat prices. If the mat prices are based on some price database (AuctionDB, TSM_WoWuction, TUJ, etc), then ensure that you have scanned for or downloaded the data as appropriate."] = "Dieses Item hat keine Herstellungskosten. Überprüfe, ob all seine Materialien einen Preis haben. Wenn die Materialpreise auf irgendeine Preisdatenbank (AuctionDB, TSM_WoWuction, TUJ, etc.) basieren, musst du sicherstellen, dass die Daten je nach Bedarf gescannt oder heruntergeladen sind."
L["This item is not in a TSM group."] = "Dieses Item ist in keiner TSM-Gruppe."
L["This item will be added to the queue when you restock its group. If this isn't happening, make a post on the TSM forums with a screenshot of the item's tooltip, operation settings, and your general TSM_Crafting options."] = "Dieses Item wird in die Warteschlange gesetzt, wenn du seine Gruppe auffüllst. Sollte das nicht passieren, wäre es nett, wenn du das TSM-Forum nutzen würdest, um uns ein Screenshot vom Tooltip des Items, Operationseinstellungen und deine allgemeine TSM_Crafting-Optionen zu übermitteln."
L["This slider sets the quantity to add/remove from the queue when left/right clicking on a row below."] = "Dieser Schieberegler bestimmt die Menge, die in der Warteschlange hinzugefügt/entfernt werden soll, wenn du auf eine Reihe unten links-/rechtsklickst."
L["Toggle to ignore gathering from Alts."] = "Wenn aktiviert, werden Twinks beim Sammeln ignoriert."
L["Toggle to ignore gathering from Alts and only gather from the crafter."] = "Wenn aktiviert, werden Twinks beim Sammeln ignoriert und nur vom Hersteller gesammelt."
L["Toggle to ignore intermediate crafting."] = "Wenn aktiviert, werden Zwischenschritte bei der Herstellung ignoriert."
L["Toggle to suggest trading inks at the vendor."] = "Wenn aktiviert, wird Crafting vorschlagen, Tinte beim Händler zu kaufen."
L["Toggle to switch between Crafting and Normal searches at the Auction House."] = "Ermöglicht im Auktionshaus das Wechseln zwischen Crafting- und normale Suche."
L["Toggle to switch between Crafting and Normal searches at the Auction House. A Crafting search will look for any disenchantable / prospectable / millable / craftable items that will provide the target item wheras a normal search will look just for the target item"] = "Ermöglicht im Auktionshaus das Wechseln zwischen Crafting- und normale Suche. Eine Crafting-Suche sucht nach entzauberbare / sondierbare / mahlbare / herstellbare Items, um das Ziel-Item herstellen zu können, während eine normale Suche nur das Ziel-Item sucht."
L["Total"] = "Total"
L["Trade Inks at the vendor"] = "Tinte beim Händler kaufen"
L["Transform"] = "Transformiere"
L["Transform Next"] = "Nächstes transformieren"
L["TSM Groups"] = "TSM-Gruppen"
L["Vendor"] = "NPC-Händler"
L["Vendor Trade"] = "NPC-Handel"
L["Visit Bank"] = "Bank besuchen"
L["Visit Guild Vault"] = "Gildentresor besuchen"
L["Visit Mailbox"] = "Briefkasten besuchen"
L["Warning: The min restock quantity must be lower than the max restock quantity."] = "Warnung: Die minimale Auffüllmenge muss kleiner sein als die maximale Auffüllmenge."
L["When you click on the \"Restock Queue\" button enough of each craft will be queued so that you have this maximum number on hand. For example, if you have 2 of item X on hand and you set this to 4, 2 more will be added to the craft queue."] = "Wenn du auf den Button \"Warteschlange\" klickst, werden genug Rezepte in die Warteschlange gesetzt, um diese maximale Menge vorrätig zu halten. Zum Beispiel: Wenn du 2-mal das Item X vorrätig hast und du diesen Wert auf 4 setzt, werden 2 weitere zur Warteschlange hinzugefügt."
L["Would you like to automatically create some TradeSkillMaster groups for this profession?"] = "Sollen automatisch einige TSM-Gruppen für diesen Beruf erstellt werden?"
L["You already have at least your max restock quantity of this item. You have %d and the max restock quantity is %d"] = "Die Item-Menge ist mindestens genauso hoch wie deine maximalen Auffüllmenge. Du hast %d und die maximale Auffüllmenge ist %d"
L["You can change the current tab of the profession frame, start gathering materials for your queue, and show the queue using these buttons."] = "Du kannst mit diesen Buttons den aktuellen Tab des Berufsfensters ändern, Materialien für deine Warteschlange sammeln, und die Warteschlange anzeigen."
L["You can click on one of the rows of the scrolling table below to view or adjust how the price of a material is calculated."] = "Du kannst in der scrollbaren Tabelle unten auf eine der Reihen klicken, um die Methode, wie der Preis eines Materials berechnet wird, anzuschauen und anzupassen."
L["You can left/right click on a row to add/remove a craft from the crafting queue."] = "Links-/Rechtsklicke auf ein Rezept unten, um es in der Herstellungswarteschlange hinzuzufügen/zu entfernen."
L["You can set the global default gathering options here, some of these can be overriden per gathering session."] = "Du kannst hier die globalen Standardoptionen fürs Sammeln setzen, einige von denen können für eine Sammelsession temporär überschrieben werden."
L["You can use this dropdown to switch between crafters."] = "Du kannst diesen Dropdown nutzen, um zwischen den Herstellern zu wechseln."
L["You can use this dropdown to switch between the current character's professions."] = "Du kannst diesen Dropdown nutzen, um zwischen den Berufen des aktuellen Charakters zu wechseln."
L["You don't know how to craft this item."] = "Dir ist nicht bekannt, wie dieses Item hergestellt wird."
L["Your craft value method for '%s' was invalid so it has been returned to the default. Details: %s"] = "Deine Herstellungskosten-Methode für '%s' war ungültig und wurde daher auf den Standardwert zurückgesetzt. Details: %s"
L["Your default craft value method was invalid so it has been returned to the default. Details: %s"] = "Deine Herstellungskosten-Standardmethode für '%s' war ungültig und wurde daher auf den Standardwert zurückgesetzt. Details: %s"
