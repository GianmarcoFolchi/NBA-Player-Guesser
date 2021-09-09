//
//  PlayerData.swift
//  NBA Player Guesser
//
//  Created by Gianmarco Folchi on 8/16/21.
//

import Foundation

//0 = name, 1 = team, 2 = position
public var playerInfo = [3547249:["Precious Achiuwa", "Heat", "F"],
            2:["Jaylen Adams", "Bulls", "G"],
            3:["Steven Adams", "Pelicans", "C"],
            4:["Bam Adebayo", "Heat", "C-F"],
            6:["LaMarcus Aldridge", "Nets", "F"],
            3547296:["Ty-Shon Alexander", "Suns", "G"],
            666400:["Nickeil Alexander-Walker", "Pelicans", "G"],
            8:["Grayson Allen", "Grizzlies", "G"],
            9:["Jarrett Allen", "Cavaliers", "C"],
            10:["Al-Farouq Aminu", "Bulls", "F"],
            12:["Kyle Anderson", "Grizzlies", "F"],
            15:["Giannis Antetokounmpo", "Bucks", "F"],
            16:["Kostas Antetokounmpo", "Lakers", "F"],
            2148:["Thanasis Antetokounmpo", "Bucks", ""],
            17:["Carmelo Anthony", "Trail Blazers", "F"],
            3547251:["Cole Anthony", "Magic", "G"],
            19:["Ryan Arcidiacono", "Bulls", "G"],
            20:["Trevor Ariza", "Heat", "F"],
            21:["D.J. Augustin", "Rockets", "G"],
            3547242:["Deni Avdija", "Wizards", "F"],
            22:["Deandre Ayton", "Suns", "C"],
            3547095:["Udoka Azubuike", "Jazz", "C-F"],
            23:["Dwayne Bacon", "Magic", "G-F"],
            24:["Marvin Bagley III", "Kings", "F"],
            3547239:["LaMelo Ball", "Hornets", "G"],
            27:["Lonzo Ball", "Pelicans", "G"],
            28:["Mo Bamba", "Magic", "C"],
            3547287:["Desmond Bane", "Grizzlies", "G"],
            30:["Harrison Barnes", "Kings", "F"],
            666423:["RJ Barrett", "Knicks", "F-G"],
            31:["Will Barton", "Nuggets", "G"],
            32:["Keita Bates-Diop", "Spurs", "F"],
            33:["Nicolas Batum", "Clippers", "F-G"],
            35:["Aron Baynes", "Raptors", "C-F"],
            36:["Kent Bazemore", "Warriors", "G"],
            666429:["Darius Bazley", "Thunder", "F"],
            37:["Bradley Beal", "Wizards", "G"],
            38:["Malik Beasley", "Timberwolves", "G"],
            41:["Jordan Bell", "Warriors", "F"],
            42:["DeAndre' Bembry", "Raptors", "F"],
            44:["Davis Bertans", "Wizards", "F"],
            45:["Patrick Beverley", "Clippers", "G"],
            3547256:["Saddiq Bey", "Pistons", "F"],
            3547265:["Tyler Bey", "Mavericks", "F"],
            46:["Khem Birch", "Raptors", "C"],
            666442:["Goga Bitadze", "Pacers", "C"],
            48:["Bismack Biyombo", "Hornets", "C"],
            49:["Nemanja Bjelica", "Heat", "F"],
            51:["Eric Bledsoe", "Pelicans", "G"],
            666446:["Keljin Blevins", "Trail Blazers", "F"],
            53:["Bogdan Bogdanovic", "Hawks", "G"],
            54:["Bojan Bogdanovic", "Jazz", "F"],
            666451:["Bol Bol", "Nuggets", "C"],
            666453:["Marques Bolden", "Wizards", "C"],
            666454:["Jordan Bone", "Pacers", "G"],
            56:["Isaac Bonga", "Wizards", "G"],
            57:["Devin Booker", "Suns", "G"],
            58:["Chris Boucher", "Raptors", "F"],
            666459:["Brian Bowen II", "Timberwolves", "F"],
            59:["Avery Bradley", "Rockets", "G"],
            60:["Tony Bradley", "Thunder", "C"],
            666463:["Jarrell Brantley", "Jazz", "F"],
            666464:["Ignas Brazdeikis", "Magic", "F"],
            61:["Mikal Bridges", "Suns", "F"],
            62:["Miles Bridges", "Hornets", "F"],
            666467:["Amida Brimah", "Pacers", "C"],
            666468:["Oshae Brissett", "Pacers", "F"],
            65:["Malcolm Brogdon", "Pacers", "G"],
            9051997:["Armoni Brooks", "Rockets", "G"],
            66:["Dillon Brooks", "Grizzlies", "G-F"],
            70:["Jaylen Brown", "Celtics", "G"],
            69:["Bruce Brown", "Nets", "G"],
            68:["Troy Brown Jr.", "Bulls", "F"],
            666476:["Moses Brown", "Celtics", "C"],
            72:["Sterling Brown", "Rockets", "G"],
            73:["Jalen Brunson", "Mavericks", "G"],
            11755528:["Elijah Bryant", "Bucks", "G"],
            74:["Thomas Bryant", "Wizards", "C"],
            75:["Reggie Bullock", "Knicks", "G-F"],
            76:["Trey Burke", "Mavericks", "G"],
            77:["Alec Burks", "Knicks", "G"],
            79:["Jimmy Butler", "Heat", "G-F"],
            2099:["Bruno Caboclo", "Rockets", ""],
            666486:["Devontae Cacok", "Lakers", "F-C"],
            81:["Kentavious Caldwell-Pope", "Lakers", "G"],
            3547304:["Facundo Campazzo", "Nuggets", ""],
            666489:["Vlatko Cancar", "Nuggets", "F"],
            9177971:["Devin Cannady", "Magic", "G"],
            83:["Clint Capela", "Hawks", "C"],
            3547252:["Vernon Carey Jr.", "Hornets", "F-C"],
            87:["Jevon Carter", "Suns", "G"],
            85:["Wendell Carter Jr.", "Magic", "F"],
            86:["Michael Carter-Williams", "Magic", "G"],
            89:["Alex Caruso", "Lakers", "G"],
            91:["Willie Cauley-Stein", "Mavericks", "C"],
            50661:["Chris Chiozza", "Nets", "G"],
            97:["Marquese Chriss", "Spurs", "F"],
            98:["Gary Clark", "76ers", "F"],
            666505:["Brandon Clarke", "Grizzlies", "F"],
            100:["Jordan Clarkson", "Jazz", "G"],
            666508:["Nicolas Claxton", "Nets", "F-C"],
            666511:["Amir Coffey", "Clippers", "G"],
            101:["John Collins", "Hawks", "F-C"],
            104:["Mike Conley", "Jazz", "G"],
            105:["Pat Connaughton", "Bucks", "G"],
            106:["Quinn Cook", "Cavaliers", "G"],
            666517:["Tyler Cook", "Pistons", "C"],
            107:["DeMarcus Cousins", "Clippers", "C"],
            108:["Robert Covington", "Trail Blazers", "F"],
            110:["Torrey Craig", "Suns", "F"],
            112:["Jae Crowder", "Suns", "F"],
            666523:["Jarrett Culver", "Timberwolves", "G"],
            114:["Seth Curry", "76ers", "G"],
            115:["Stephen Curry", "Warriors", "G"],
            3547305:["Nate Darling", "Hornets", ""],
            117:["Anthony Davis", "Lakers", "F-C"],
            118:["Ed Davis", "Timberwolves", "C"],
            666530:["Terence Davis", "Kings", "G"],
            9530711:["Gabriel Deck", "Thunder", ""],
            120:["Dewayne Dedmon", "Heat", "C"],
            123:["Matthew Dellavedova", "Cavaliers", "G"],
            125:["DeMar DeRozan", "Spurs", "G"],
            3547163:["Mamadi Diakite", "Bucks", "F"],
            128:["Hamidou Diallo", "Pistons", "G"],
            129:["Gorgui Dieng", "Spurs", "C"],
            130:["Spencer Dinwiddie", "Nets", "G"],
            131:["Donte DiVincenzo", "Bucks", "G"],
            132:["Luka Doncic", "Mavericks", "F-G"],
            666541:["Luguentz Dort", "Thunder", "G"],
            134:["Damyean Dotson", "Cavaliers", "G"],
            3547197:["Devon Dotson", "Bulls", "G"],
            666543:["Sekou Doumbouya", "Pistons", "F"],
            135:["PJ Dozier", "Nuggets", "G-F"],
            136:["Goran Dragic", "Heat", "G"],
            137:["Andre Drummond", "Lakers", "C"],
            138:["Jared Dudley", "Lakers", "F"],
            139:["Kris Dunn", "Hawks", "G"],
            140:["Kevin Durant", "Nets", "F"],
            3547238:["Anthony Edwards", "Timberwolves", "G"],
            666551:["Carsen Edwards", "Celtics", "G"],
            3547164:["CJ Elleby", "Trail Blazers", "F-G"],
            143:["Henry Ellenson", "Raptors", "F"],
            144:["Wayne Ellington", "Pistons", "G"],
            145:["Joel Embiid", "76ers", "F-C"],
            146:["James Ennis III", "Magic", "F"],
            147:["Drew Eubanks", "Spurs", "F"],
            151:["Dante Exum", "Rockets", "G"],
            666560:["Tacko Fall", "Celtics", "C"],
            153:["Derrick Favors", "Jazz", "F-C"],
            154:["Cristiano Felicio", "Bulls", "F-C"],
            156:["Terrance Ferguson", "Knicks", "G"],
            666564:["Bruno Fernando", "Hawks", "F"],
            157:["Yogi Ferrell", "Clippers", "G"],
            158:["Dorian Finney-Smith", "Mavericks", "F"],
            9338307:["Malik Fitts", "Clippers", "F"],
            3547275:["Malachi Flynn", "Raptors", "G"],
            159:["Bryn Forbes", "Bucks", "G"],
            3547297:["Trent Forrest", "Jazz", "G"],
            160:["Evan Fournier", "Celtics", "G-F"],
            161:["De'Aaron Fox", "Kings", "G"],
            666570:["Robert Franks", "Mavericks", "F"],
            163:["Tim Frazier", "Grizzlies", "G"],
            165:["Markelle Fultz", "Magic", "G"],
            166:["Wenyen Gabriel", "Pelicans", "F"],
            666577:["Daniel Gafford", "Wizards", "F"],
            167:["Danilo Gallinari", "Hawks", "F"],
            168:["Langston Galloway", "Suns", "G"],
            666581:["Darius Garland", "Cavaliers", "G"],
            169:["Marc Gasol", "Lakers", "C"],
            171:["Rudy Gay", "Spurs", "F"],
            172:["Paul George", "Clippers", "F"],
            173:["Taj Gibson", "Knicks", "F"],
            174:["Harry Giles III", "Trail Blazers", "F-C"],
            175:["Shai Gilgeous-Alexander", "Thunder", "G"],
            3547302:["Anthony Gill", "Wizards", "F"],
            9318184:["Freddie Gillespie", "Raptors", "F"],
            176:["Rudy Gobert", "Jazz", "C"],
            3091:["Brandon Goodwin", "Hawks", ""],
            177:["Aaron Gordon", "Nuggets", "F"],
            178:["Eric Gordon", "Rockets", "G"],
            180:["Devonte' Graham", "Hornets", "G"],
            182:["Jerami Grant", "Pistons", "F"],
            184:["Danny Green", "76ers", "G-F"],
            185:["Draymond Green", "Warriors", "F"],
            187:["JaMychal Green", "Nuggets", "F"],
            666604:["Javonte Green", "Bulls", "G-F"],
            188:["Jeff Green", "Nets", "F"],
            3547258:["Josh Green", "Mavericks", "G"],
            189:["Blake Griffin", "Nets", "F"],
            666608:["Kyle Guy", "Kings", "G"],
            666609:["Rui Hachimura", "Wizards", "F"],
            3547278:["Ashton Hagans", "Raptors", "G-F"],
            3547245:["Tyrese Haliburton", "Kings", "G"],
            666611:["Donta Hall", "Magic", "F"],
            3547290:["Josh Hall", "Thunder", "F"],
            3547257:["R.J. Hampton", "Magic", "G"],
            191:["Tim Hardaway Jr.", "Mavericks", "G"],
            192:["James Harden", "Nets", "G"],
            193:["Maurice Harkless", "Kings", "F"],
            666616:["Jared Harper", "Knicks", "G"],
            194:["Montrezl Harrell", "Lakers", "F-C"],
            196:["Gary Harris", "Magic", "G"],
            3547292:["Jalen Harris", "Raptors", "G"],
            197:["Joe Harris", "Nets", "F-G"],
            200:["Tobias Harris", "76ers", "F"],
            199:["Shaquille Harrison", "Nuggets", "G"],
            202:["Josh Hart", "Pelicans", "G"],
            201:["Isaiah Hartenstein", "Cavaliers", "F-C"],
            203:["Udonis Haslem", "Heat", "F"],
            666626:["Jaxson Hayes", "Pelicans", "C"],
            3547241:["Killian Hayes", "Pistons", "G"],
            204:["Gordon Hayward", "Hornets", "F"],
            206:["Juancho Hernangomez", "Timberwolves", "F"],
            207:["Willy Hernangomez", "Pelicans", "C"],
            666633:["Tyler Herro", "Heat", "G"],
            210:["Buddy Hield", "Kings", "G"],
            211:["George Hill", "76ers", "G"],
            212:["Solomon Hill", "Hawks", "F"],
            3547281:["Nate Hinton", "Mavericks", "G-F"],
            666641:["Jaylen Hoard", "Thunder", "F"],
            213:["Aaron Holiday", "Pacers", "G"],
            214:["Jrue Holiday", "Bucks", "G"],
            215:["Justin Holiday", "Pacers", "F-G"],
            216:["Rondae Hollis-Jefferson", "Trail Blazers", "F"],
            217:["Richaun Holmes", "Kings", "F-C"],
            218:["Rodney Hood", "Raptors", "G"],
            219:["Al Horford", "Celtics", "C-F"],
            666650:["Talen Horton-Tucker", "Lakers", "G"],
            2175:["Danuel House Jr.", "Rockets", ""],
            220:["Dwight Howard", "76ers", "C"],
            3547283:["Markus Howard", "Nuggets", "G"],
            221:["Kevin Huerter", "Hawks", "G"],
            3547266:["Elijah Hughes", "Jazz", "G"],
            666656:["De'Andre Hunter", "Hawks", "F"],
            222:["Chandler Hutchison", "Wizards", "F"],
            223:["Serge Ibaka", "Clippers", "F-C"],
            224:["Andre Iguodala", "Heat", "G-F"],
            225:["Ersan Ilyasova", "Jazz", "F"],
            226:["Joe Ingles", "Jazz", "F"],
            227:["Brandon Ingram", "Pelicans", "F"],
            228:["Kyrie Irving", "Nets", "G"],
            230:["Wes Iwundu", "Pelicans", "F"],
            233:["Frank Jackson", "Pistons", "G"],
            234:["Josh Jackson", "Pistons", "F"],
            231:["Jaren Jackson Jr.", "Grizzlies", "F-C"],
            235:["Justin Jackson", "Bucks", "F"],
            236:["Reggie Jackson", "Clippers", "G"],
            666672:["Justin James", "Kings", "G-F"],
            237:["LeBron James", "Lakers", "F"],
            1394:["Mike James", "Heat", ""],
            666675:["DaQuan Jeffries", "Spurs", "F"],
            666676:["Ty Jerome", "Thunder", "G"],
            3547272:["Isaiah Joe", "76ers", "G"],
            240:["Alize Johnson", "Nets", "F"],
            666679:["Cameron Johnson", "Suns", "F"],
            242:["James Johnson", "Pelicans", "F"],
            666682:["Keldon Johnson", "Spurs", "F"],
            243:["Stanley Johnson", "Raptors", "F"],
            244:["Tyler Johnson", "Nets", "G"],
            246:["Nikola Jokic", "Nuggets", "C"],
            248:["Damian Jones", "Kings", "C"],
            247:["Derrick Jones Jr.", "Trail Blazers", "F-G"],
            3547291:["Mason Jones", "Wizards", "G"],
            3547274:["Tre Jones", "Spurs", "G"],
            249:["Tyus Jones", "Grizzlies", "G"],
            250:["DeAndre Jordan", "Nets", "C"],
            251:["Cory Joseph", "Pistons", "G"],
            666692:["Mfiondu Kabengele", "Cavaliers", "F"],
            252:["Frank Kaminsky", "Suns", "F-C"],
            253:["Enes Kanter", "Trail Blazers", "C"],
            254:["Luke Kennard", "Clippers", "G"],
            666698:["Louis King", "Kings", "F"],
            257:["Maxi Kleber", "Mavericks", "F"],
            3547295:["Nathan Knight", "Hawks", "F-C"],
            259:["Kevin Knox", "Knicks", "F"],
            666703:["John Konchar", "Grizzlies", "G-F"],
            260:["Furkan Korkmaz", "76ers", "G-F"],
            261:["Luke Kornet", "Celtics", "F-C"],
            264:["Rodions Kurucs", "Bucks", "F"],
            265:["Kyle Kuzma", "Lakers", "F"],
            7155648:["Anthony Lamb", "Rockets", "F"],
            267:["Jeremy Lamb", "Pacers", "G"],
            666713:["Romeo Langford", "Celtics", "G"],
            268:["Zach LaVine", "Bulls", "G"],
            269:["Jake Layman", "Timberwolves", "F"],
            270:["TJ Leaf", "Trail Blazers", "F"],
            666720:["Jalen Lecque", "Thunder", "G"],
            272:["Damion Lee", "Warriors", "G"],
            3547298:["Saben Lee", "Pistons", "G"],
            273:["Alex Len", "Wizards", "C"],
            274:["Kawhi Leonard", "Clippers", "F"],
            275:["Meyers Leonard", "Thunder", "F-C"],
            277:["Caris LeVert", "Pacers", "G"],
            3547260:["Kira Lewis Jr.", "Pelicans", "G"],
            278:["Damian Lillard", "Trail Blazers", "G"],
            666729:["Nassir Little", "Trail Blazers", "F"],
            282:["Kevon Looney", "Warriors", "F"],
            283:["Brook Lopez", "Bucks", "C"],
            284:["Robin Lopez", "Wizards", "C"],
            285:["Kevin Love", "Cavaliers", "F-C"],
            286:["Kyle Lowry", "Raptors", "G"],
            288:["Timothe Luwawu-Cabarrot", "Nets", "G-F"],
            290:["Trey Lyles", "Spurs", "F"],
            3547303:["Will Magnay", "Pelicans", "C"],
            295:["Thon Maker", "Cavaliers", "F"],
            3547253:["Theo Maledon", "Thunder", "G"],
            3547284:["Karim Mane", "Timberwolves", "G"],
            666743:["Terance Mann", "Clippers", "G"],
            3547261:["Nico Mannion", "Warriors", "G"],
            296:["Boban Marjanovic", "Mavericks", "C"],
            297:["Lauri Markkanen", "Bulls", "F"],
            3547293:["Naji Marshall", "Pelicans", "F"],
            666747:["Caleb Martin", "Hornets", "F"],
            666748:["Cody Martin", "Hornets", "F"],
            666750:["Jeremiah Martin", "Cavaliers", "G"],
            666751:["Kelan Martin", "Pacers", "F"],
            299:["Frank Mason", "76ers", "G"],
            666754:["Garrison Mathews", "Wizards", "G"],
            666755:["Dakota Mathias", "Jazz", "G"],
            301:["Wesley Matthews", "Lakers", "G-F"],
            3547254:["Tyrese Maxey", "76ers", "G"],
            3547289:["Skylar Mays", "Hawks", "G"],
            2158:["Patrick McCaw", "Raptors", ""],
            303:["CJ McCollum", "Trail Blazers", "G"],
            304:["T.J. McConnell", "Pacers", "G"],
            3547259:["Jaden McDaniels", "Timberwolves", "F"],
            666762:["Jalen McDaniels", "Hornets", "F"],
            305:["Doug McDermott", "Pacers", "F"],
            3547300:["Sean McDermott", "Grizzlies", "F"],
            306:["JaVale McGee", "Nuggets", "C"],
            307:["Rodney McGruder", "Pistons", "F-G"],
            308:["Alfonzo McKinnie", "Lakers", "F"],
            666767:["Jordan McLaughlin", "Timberwolves", "G"],
            309:["Ben McLemore", "Lakers", "G"],
            666770:["Nicolo Melli", "Pelicans", "F"],
            313:["De'Anthony Melton", "Grizzlies", "G"],
            3547299:["Sam Merrill", "Bucks", "G"],
            314:["Chimezie Metu", "Kings", "F"],
            315:["Khris Middleton", "Bucks", "F"],
            317:["Darius Miller", "Thunder", "F"],
            319:["Patty Mills", "Spurs", "G"],
            318:["Paul Millsap", "Nuggets", "F"],
            320:["Shake Milton", "76ers", "G"],
            322:["Donovan Mitchell", "Jazz", "G"],
            666783:["Adam Mokoka", "Bulls", "G"],
            324:["Malik Monk", "Hornets", "G"],
            326:["E'Twaun Moore", "Suns", "G"],
            666786:["Ja Morant", "Grizzlies", "G"],
            666788:["Juwan Morgan", "Jazz", "F"],
            328:["Marcus Morris", "Clippers", "F"],
            329:["Markieff Morris", "Lakers", "F"],
            330:["Monte Morris", "Nuggets", "G"],
            666794:["Mychal Mulder", "Warriors", "G"],
            334:["Dejounte Murray", "Spurs", "G"],
            335:["Jamal Murray", "Nuggets", "G"],
            337:["Mike Muscala", "Thunder", "F-C"],
            338:["Svi Mykhailiuk", "Thunder", "G"],
            339:["Abdel Nader", "Suns", "F"],
            340:["Larry Nance Jr.", "Cavaliers", "F"],
            3547250:["Aaron Nesmith", "Celtics", "G-F"],
            344:["Georges Niang", "Jazz", "F"],
            3547268:["Zeke Nnaji", "Nuggets", "F-C"],
            345:["Nerlens Noel", "Knicks", "F-C"],
            666809:["Jaylen Nowell", "Timberwolves", "G"],
            347:["Frank Ntilikina", "Knicks", "G"],
            50927:["Kendrick Nunn", "Heat", "G"],
            348:["James Nunnally", "Pelicans", "F"],
            349:["Jusuf Nurkic", "Trail Blazers", "C"],
            350:["David Nwaba", "Rockets", "G"],
            3547207:["Jordan Nwora", "Bucks", "F"],
            351:["Royce O'Neale", "Jazz", "F"],
            353:["Semi Ojeleye", "Celtics", "F"],
            354:["Jahlil Okafor", "Pistons", "C"],
            666818:["Chuma Okeke", "Magic", "F"],
            356:["Josh Okogie", "Timberwolves", "G"],
            3547244:["Onyeka Okongwu", "Hawks", "F-C"],
            3547247:["Isaac Okoro", "Cavaliers", "F-G"],
            666821:["KZ Okpala", "Heat", "F"],
            357:["Victor Oladipo", "Heat", "G"],
            11558583:["Cameron Oliver", "Warriors", "F"],
            358:["Kelly Olynyk", "Rockets", "F"],
            666824:["Miye Oni", "Jazz", "G"],
            359:["Cedi Osman", "Cavaliers", "F"],
            3547263:["Daniel Oturu", "Clippers", "C"],
            360:["Kelly Oubre Jr.", "Warriors", "F"],
            362:["Jabari Parker", "Celtics", "F"],
            666831:["Eric Paschall", "Warriors", "F"],
            1358055:["Anzejs Pasecniks", "Pelicans", "C"],
            365:["Patrick Patterson", "Clippers", "F"],
            366:["Justin Patton", "Knicks", "C"],
            367:["Chris Paul", "Suns", "G"],
            368:["Cameron Payne", "Suns", "G"],
            2968:["Gary Payton", "Thunder", ""],
            369:["Elfrid Payton", "Knicks", "G"],
            666837:["Norvel Pelle", "Knicks", "F"],
            3547169:["Reggie Perry", "Nets", "F-C"],
            370:["Theo Pinson", "Knicks", "G-F"],
            371:["Mason Plumlee", "Pistons", "F-C"],
            373:["Jakob Poeltl", "Spurs", "C"],
            666846:["Vincent Poirier", "Knicks", "C"],
            3547271:["Aleksej Pokusevski", "Thunder", "C"],
            666848:["Jordan Poole", "Warriors", "G"],
            2309958:["Jontay Porter", "Grizzlies", "C-F"],
            666849:["Kevin Porter Jr.", "Rockets", "G"],
            375:["Michael Porter Jr.", "Nuggets", "F"],
            376:["Otto Porter Jr.", "Magic", "F"],
            377:["Bobby Portis", "Bucks", "F"],
            378:["Kristaps Porzingis", "Mavericks", "F-C"],
            379:["Dwight Powell", "Mavericks", "F-C"],
            380:["Norman Powell", "Trail Blazers", "F-G"],
            383:["Taurean Prince", "Cavaliers", "F"],
            3547276:["Payton Pritchard", "Celtics", "G"],
            3547269:["Immanuel Quickley", "Knicks", "G"],
            3547262:["Jahmi'us Ramsey", "Kings", "G"],
            386:["Chasson Randle", "Magic", "G"],
            387:["Julius Randle", "Knicks", "F"],
            666860:["Cameron Reddish", "Hawks", "F-G"],
            389:["JJ Redick", "Mavericks", "G"],
            3547270:["Paul Reed", "76ers", "F"],
            667378:["Naz Reid", "Timberwolves", "F-C"],
            3547282:["Nick Richards", "Hornets", "C"],
            391:["Josh Richardson", "Mavericks", "G-F"],
            3547277:["Grant Riller", "Hornets", "G"],
            393:["Austin Rivers", "Nuggets", "G"],
            394:["Andre Roberson", "Nets", "G-F"],
            397:["Duncan Robinson", "Heat", "F"],
            907:["Glenn Robinson", "Bucks", ""],
            398:["Jerome Robinson", "Bulls", "G"],
            666871:["Justin Robinson", "Lakers", "G"],
            399:["Mitchell Robinson", "Knicks", "C"],
            666873:["Isaiah Roby", "Thunder", "F"],
            400:["Rajon Rondo", "Clippers", "G"],
            401:["Derrick Rose", "Knicks", "G"],
            402:["Terrence Ross", "Magic", "G-F"],
            403:["Terry Rozier", "Hornets", "G"],
            404:["Ricky Rubio", "Timberwolves", "G"],
            405:["D'Angelo Russell", "Timberwolves", "G"],
            406:["Domantas Sabonis", "Pacers", "F"],
            666881:["Luka Samanic", "Spurs", "F"],
            2080:["JaKarr Sampson", "Pacers", ""],
            407:["Dario Saric", "Suns", "F"],
            408:["Tomas Satoransky", "Bulls", "G-F"],
            409:["Dennis Schroder", "Lakers", "G"],
            410:["Mike Scott", "76ers", "F"],
            3547280:["Jay Scrubb", "Clippers", "G"],
            413:["Collin Sexton", "Cavaliers", "G"],
            414:["Landry Shamet", "Nets", "G"],
            415:["Iman Shumpert", "Nets", "G"],
            416:["Pascal Siakam", "Raptors", "F"],
            666894:["Chris Silva", "Nets", "F"],
            417:["Ben Simmons", "76ers", "G-F"],
            419:["Anfernee Simons", "Trail Blazers", "G"],
            666899:["Deividas Sirvydis", "Pistons", "G"],
            666900:["Alen Smailagic", "Warriors", "F"],
            420:["Marcus Smart", "Celtics", "G"],
            421:["Dennis Smith Jr.", "Pistons", "G"],
            422:["Ish Smith", "Wizards", "G"],
            3547264:["Jalen Smith", "Suns", "F-C"],
            426:["Tony Snell", "Hawks", "G"],
            3547273:["Cassius Stanley", "Pacers", "G"],
            3547279:["Lamar Stevens", "Cavaliers", "F"],
            3547267:["Isaiah Stewart", "Pistons", "F-C"],
            666908:["Max Strus", "Heat", "G"],
            432:["Edmond Sumner", "Pacers", "G"],
            3547301:["Jae'Sean Tate", "Rockets", "F"],
            434:["Jayson Tatum", "Celtics", "F"],
            435:["Jeff Teague", "Bucks", "G"],
            436:["Garrett Temple", "Bulls", "G-F"],
            3547255:["Tyrell Terry", "Mavericks", "G"],
            439:["Daniel Theis", "Bulls", "F"],
            3547306:["Brodric Thomas", "Cavaliers", "G"],
            440:["Isaiah Thomas", "Pelicans", "G"],
            441:["Khyri Thomas", "Rockets", "G"],
            666919:["Matt Thomas", "Jazz", "G"],
            444:["Tristan Thompson", "Celtics", "C-F"],
            445:["Sindarius Thornwell", "Magic", "G"],
            666923:["Matisse Thybulle", "76ers", "G-F"],
            3547215:["Killian Tillie", "Grizzlies", "F-C"],
            3547285:["Xavier Tillman", "Grizzlies", "F"],
            446:["Anthony Tolliver", "76ers", "F"],
            3547243:["Obi Toppin", "Knicks", "F"],
            666925:["Juan Toscano-Anderson", "Warriors", "F"],
            2151:["Axel Toupane", "Bucks", ""],
            447:["Karl-Anthony Towns", "Timberwolves", "C"],
            448:["Gary Trent Jr.", "Trail Blazers", "G"],
            450:["PJ Tucker", "Bucks", "F"],
            666930:["Rayjon Tucker", "76ers", "F"],
            452:["Myles Turner", "Pacers", "C-F"],
            455:["Jonas Valanciunas", "Grizzlies", "C"],
            456:["Denzel Valentine", "Bulls", "G"],
            457:["Jarred Vanderbilt", "Timberwolves", "F"],
            458:["Fred VanVleet", "Raptors", "G"],
            1557:["Anderson Varejao", "Cavaliers", ""],
            3547246:["Devin Vassell", "Spurs", "G-F"],
            1603383:["Gabe Vincent", "Heat", "G"],
            459:["Noah Vonleh", "Nets", "F"],
            460:["Nikola Vucevic", "Bulls", "C"],
            666940:["Dean Wade", "Cavaliers", "F"],
            462:["Moritz Wagner", "Magic", "C"],
            465:["Kemba Walker", "Thunder", "G"],
            464:["Lonnie Walker IV", "Spurs", "G"],
            1014:["John Wallace", "Knicks", ""],
            468:["Brad Wanamaker", "Hornets", "G"],
            469:["T.J. Warren", "Pacers", "F"],
            666950:["P.J. Washington", "Hornets", "F"],
            470:["Yuta Watanabe", "Raptors", "G"],
            666952:["Tremont Waters", "Celtics", "G"],
            1567838:["Paul Watson", "Raptors", "G"],
            666953:["Quinndary Weatherspoon", "Spurs", "G"],
            472:["Russell Westbrook", "Wizards", "G"],
            666956:["Coby White", "Bulls", "G"],
            473:["Derrick White", "Spurs", "G"],
            474:["Hassan Whiteside", "Kings", "C"],
            3546977:["Greg Whittington", "Nuggets", "F"],
            475:["Andrew Wiggins", "Warriors", "F-G"],
            666965:["Grant Williams", "Celtics", "F"],
            480:["Kenrich Williams", "Thunder", "G-F"],
            481:["Lou Williams", "Hawks", "G"],
            3547248:["Patrick Williams", "Bulls", "F"],
            476:["Robert Williams III", "Celtics", "C-F"],
            666969:["Zion Williamson", "Pelicans", "F"],
            484:["D.J. Wilson", "Rockets", "F"],
            666971:["Dylan Windler", "Cavaliers", "G-F"],
            485:["Justise Winslow", "Grizzlies", "F"],
            3547286:["Cassius Winston", "Wizards", "G"],
            3547240:["James Wiseman", "Warriors", "C"],
            486:["Christian Wood", "Rockets", "F"],
            3547288:["Robert Woodard II", "Kings", "F"],
            487:["Delon Wright", "Kings", "G"],
            489:["Thaddeus Young", "Bulls", "F"],
            490:["Trae Young", "Hawks", "G"],
            491:["Cody Zeller", "Hornets", "C"],
            493:["Ivica Zubac", "Clippers", "C"]]

public var season_20_21_IDs = [203, 3547215, 33, 123, 324, 230, 3547164, 446, 3547241, 3547260, 666543, 202, 243, 50927, 476, 165, 486, 2151, 666675, 317, 464, 666783, 391, 445, 408, 135, 83, 173, 61, 357, 9318184, 666672, 2148, 465, 666581, 146, 666952, 283, 139, 3547281, 1014, 345, 226, 184, 264, 481, 9051997, 37, 23, 3547256, 666505, 3547275, 221, 3547282, 666451, 242, 138, 666899, 275, 144, 112, 188, 237, 313, 272, 329, 358, 666486, 436, 460, 131, 3547265, 77, 236, 666468, 666429, 267, 286, 666446, 163, 120, 3547255, 24, 3547295, 265, 666560, 3547257, 3547248, 140, 174, 405, 434, 3547242, 3547284, 16, 30, 252, 273, 366, 216, 401, 666423, 211, 1358055, 322, 223, 368, 353, 130, 254, 666679, 666611, 3547264, 493, 166, 1557, 288, 191, 21, 75, 12, 215, 348, 161, 261, 175, 409, 3547244, 666894, 219, 666950, 305, 666940, 458, 367, 459, 666464, 27, 441, 125, 284, 3547291, 65, 89, 397, 118, 399, 456, 475, 117, 413, 484, 666604, 3547095, 257, 56, 156, 214, 3547280, 666969, 393, 169, 97, 157, 200, 344, 666824, 450, 128, 666577, 44, 115, 404, 455, 1567838, 4, 282, 251, 3547285, 666837, 371, 350, 244, 440, 3547239, 666616, 3547169, 444, 666508, 383, 666633, 3547266, 2080, 362, 48, 666459, 340, 398, 474, 285, 666729, 220, 299, 666762, 11558583, 3547293, 410, 666821, 666873, 185, 137, 666511, 319, 1603383, 192, 3547302, 3547240, 666956, 2, 666748, 79, 415, 359, 3547299, 338, 233, 100, 666454, 199, 666818, 57, 666786, 417, 201, 666698, 3091, 356, 3547262, 337, 667378, 666871, 259, 3547283, 3547278, 666925, 206, 260, 3547272, 204, 2099, 182, 389, 666953, 41, 38, 143, 196, 50661, 666747, 3547274, 666919, 268, 462, 66, 151, 3547245, 666750, 666453, 315, 420, 666971, 3547246, 386, 472, 59, 87, 448, 3547249, 36, 91, 666551, 3547261, 666523, 228, 290, 3547207, 235, 457, 666754, 3547296, 207, 3547279, 160, 3547251, 2158, 365, 187, 197, 178, 3547267, 347, 414, 225, 3547263, 489, 3547269, 180, 426, 3547197, 666400, 422, 129, 666608, 452, 247, 369, 370, 304, 168, 666489, 9530711, 167, 309, 407, 432, 2175, 335, 435, 470, 54, 45, 49, 666703, 3, 666788, 9177971, 666463, 240, 666720, 666849, 377, 375, 68, 134, 22, 666881, 154, 58, 81, 487, 307, 306, 53, 380, 3547297, 3547253, 2968, 490, 231, 666682, 3547250, 250, 666930, 360, 666467, 666650, 3547303, 326, 376, 246, 17, 20, 9, 217, 3547290, 101, 108, 234, 9338307, 249, 270, 666770, 110, 98, 74, 473, 212, 296, 3547271, 469, 177, 349, 8, 7155648, 72, 70, 3547277, 136, 222, 394, 419, 3547276, 378, 387, 278, 3547163, 253, 3547259, 666751, 666676, 666831, 297, 301, 400, 3547301, 3547287, 320, 666476, 3547305, 10, 666656, 60, 666641, 334, 218, 269, 666794, 480, 28, 69, 172, 485, 406, 1394, 402, 32, 145, 76, 31, 42, 106, 666570, 666846, 227, 85, 439, 666442, 3547238, 3547258, 6, 308, 328, 3547254, 105, 35, 666541, 2309958, 666965, 46, 107, 330, 339, 666848, 3546977, 176, 193, 3547298, 3547300, 11755528, 318, 210, 354, 3547243, 666743, 666530, 666767, 3547252, 3547306, 666609, 666517, 666692, 3547270, 666900, 51, 62, 447, 379, 159, 3547304, 86, 3547268, 3547288, 421, 295, 666713, 666923, 104, 3547286, 491, 189, 303, 403, 416, 15, 19, 114, 666908, 666755, 373, 248, 468, 158, 147, 171, 666809, 666564, 3547292, 153, 3547273, 666860, 314, 274, 3547247, 132, 351, 194, 666626, 213, 224, 3547289, 73, 277, 907]


