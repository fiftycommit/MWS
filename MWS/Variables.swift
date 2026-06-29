//
//  Variables.swift
//  MWS
//
//  Created by Max M'bey on 24/12/2023.
//

import Foundation
import SwiftData
import SwiftUI
import ColorKit


final class Commun{
    let niveaux : [String]
    //on initialise la constante pays avec une liste contenant les différents pays des artistes
    let pays : [String]
    
    init(){
        self.niveaux = ["Facile", "Moyen", "Expert","Impossible","Mix"]
        self.pays = ["fr 🇫🇷","us 🇺🇸","mix 🇫🇷🇺🇸"]
        
    }
    
    //liste pour le mode de jeu pochette (nom du projet, nom de l'artiste)
    func quelLevel(_ cover: String) -> [[String]]{
        let facilefrancophone = [["CYBORG","NEKFEU"],["DEUX FRERES","PNL"],["COMME PREVU","NINHO"], ["DIAMANT DU BLED","ZOLA"], ["DNK","AYA NAKAMURA"], ["MR SAL","NISKA"], ["LE BRUIT DE MON AME","KAARIS"], ["LA VIE EST BELLE","GAMBI"], ["LES DERNIERS SALOPARDS","MAES"], ["SINCEREMENT","HAMZA"], ["TVX","STAVO"],["DON DADA MIXTAPE","ALPHA WANN"],["ULTRA","BOOBA"],["CULLINAN","DADJU"],["LITHOPEDION","DAMSO"],["TRIX CITY","DIDDI TRIX"],["RONALDINOR","DINOR"],["TACITURNE","DINOS"],["STAMINA","DINOS"],["SPLEEN","DJADJA & DINAZ"],["DESIIGNER","FREEZE CORLEONE"],["KMT","GAZO"],["ZONE 59","GRADUR"],["MELANCHOLIA 999","GREEN MONTANA"],["LA CALLE 5","GUY2BEZBAR"],["PARADISE","HAMZA"],["PETIT CON","ICO"],["STRATOS","KEKRA"],["DETAIL","KOBA LA D"],["TRAHISON","L2B"],["100 VISAGES","LETO"],["TRAP$TAR 2","LETO"],["FLIP","LOMEPAL"],["JEANNINE","LOMEPAL"],["FREESTYLE DU SALE","LORENZO"],["REELLE VIE 30","MAES"],["GROS BEBE","NAZA"],["MILS 3","NINHO"],["JEFE","NINHO"],["COMMANDO","NISKA"],["ZIFUKORO","NISKA"],["CIVILISATION","ORELSAN"],["LA FETE EST FINIE","ORELSAN"],["2069'","PLK"],["ENNA","PLK"],["JVLIVS II","SCH"],["ROOFTOP","SCH"],["MELO","TIAKOLA"],["CE MONDE EST CRUEL","VALD"]]
        
        let facileanglophone = [["LOOK AT ME","XXXTENTACION"],["RODEO","TRAVIS SCOTT"], ["DARK LANE DEMO TAPES","DRAKE"], ["SCORPION","DRAKE"], ["MEET THE WOO 2","POP SMOKE"], ["MY TURN","LIL BABY"], ["DUMMY BOY","6IX9INE"],["HARVERD DROPOUT","LIL PUMP"],["BUTTERFLY DOORS","LIL PUMP"],["FAITH","POP SMOKE"],["LOUD","RIHANNA"],["AFTER HOURS","THE WEEKND"]]
        
        //[["nom de l'image"],["nom du projet"]]
        let albumfacilefrancophone = [["19","19"],["21","21"],["A7","A7"],["DROGUE","DROGUE"],["FEU","FEU"],["L'ECOLE DES POINTS VITAUX","L'ECOLE DES POINTS VITAUX"],["L'HOMME AU BOB","L'HOMME AU BOB"],["MHD","MHD"],["OR NOIR","OR NOIR"],["RONISIA","RONISIA"],["CIVILISATION","CIVILISATION"],["COMMANDO","COMMANDO"],["CYBORG","CYBORG"],["WSHHH","WSHHH"]]
        
        let albumfacileanglophone = [["CULTURE","CULTURE"],["ISSA ALBUM","ISSA ALBUM"],["LIL DURK 2X","LIL DURK 2X"],["LIL PUMP","LIL PUMP"],["PLAYBOI CARTI","PLAYBOI CARTI"],["HEAVEN OR HELL","HEAVEN OR HELL"],["LOOK AT ME","LOOK AT ME"],["REMEMBER MY NAME","REMEMBER MY NAME"]]
        
        let moyenfrancophone = [["MAFANA","OBOY"],["DIEU BENISSE SUPERSOUND","SNEAZZY"],["CDC4","LA FOUINE"],["JESUISPASSECHEZSO : EPISODE 1","SOFIANE"],["CAPITALE DU CRIME 3","LA FOUINE"],["JO$","JOSMAN"],["DIAMOND ROCK","KALASH"],["PARIS SUD MINUTE","1995"],["LMF","FREEZE CORLEONE"],["BENZEMA","BRULUX"],["ERRR","LA FEVE"],["HEARTBREAK LIFE","KAZA"],["LONDON","CHEU B"],["YURI","DOSSEH"],["EN ATTENDANT GAMBINERIE","GAMBINO LA MG"],["CARRE","WERENOI"], ["C'est tout","GUIZMO"], ["ADIOS BAHAMAS","NEPAL"],["SOURIS VERTE","NAZA"]]
        
        let moyenanglophone = [["IGOR","TYLER THE CREATOR"],["IF YOU'RE READING THIS IT'S TOO LATE","DRAKE"],["17","XXXTENTACION"],["21 GANG","21 SAVAGE"],["KIRK","DABABY"],["THE WORLD IS YOURS","RICH THE KID"],["NOT ALL HEROES WEAR CAPES","METRO BOOMIN"],["LIL UZI VERT VS THE WORLD","LIL UZI VERT"],["MY BEAUTIFUL DARK TWISTED FANTASY","KANYE WEST"],["BEST FRIEND","YOUNG THUG"],["FUTURE","FUTURE"],["LOVE ME NOW","TORY LANEZ"]]
        
        let albummoyenfrancophone = [["ALBUM_JEFE","JEFE"],["BATTERIE FAIBLE","BATTERIE FAIBLE"],["C'EST LA LOI","C'EST LA LOI"],["CICATRICES","CICATRICES"],["DRILL FR","DRILL FR"],["IPSEITE","IPSEITE"],["LE MONDE EST MECHANT","LE MONDE EST MECHANT"],["NERO NEMESIS","NERO NEMESIS"],["CARRE","CARRE"],["LES DERNIERS SALOPARDS","LES DERNIERS SALOPARDS"]]
        
        let albummoyenanglophone = [["ASTROWORLD","ASTROWORLD"],["BARTER 6","BARTER 6"],["CALL ME IF YOU GET LOST","CALL ME IF YOU GET LOST"],["FINALLY RICH","FINALLY RICH"],["GET RICH OR DIE TRYIN","GET RICH OR DIE TRYIN"],["PAINTING PICTURES","PAINTING PICTURES"],["VIEWS","VIEWS"],["DIE LIT","DIE LIT"],["FAITH","FAITH"],["KHALIFA","KHALIFA"]]
        
        let expertfrancophone = [["NETFLIX AND CHILL","MADEMOISELLE LOU"], ["SPLIT","JOSMAN"], ["LION","PNL"], ["Bushi","BU$HI"], ["NUIT","JAZZY BAZZ"],["PERESTROÏKA","DOSSEH"],["SERRURE #2","LA RVFLEUSE"],["VREEL","KEKRA"],["SELECTION NATURELLE","KALASH CRIMINEL"],["TACITURNE, LES INACHEVES","DINOS"],["THE NORTH DOESN'T FORGET","CINCO"],["AUTOPSIE 0","BOOBA"],["MUCHO DINERO","DAMSO"],["AVENUE DE ST ANTOINE","ALONZO"],["ZO2","ZOKUSH"],["NOUS C'EST LA TH, Vol2","SAAMOU SKUU"],["WOODSTOCK","HOOSS"],["DADDY","CHEU B"],["ILLUSIONS","J9UEVE"],["CRUISE","ASHH"],["VIDE","MADEINPARIS"],["INFINIGGA","ATEYABA"], ["PRECIEUX","MADEMOISELLE LOU"],["TRISTESSE BUSINESS : SAISON 1","LUIDJI"],["SACRIFICES","CINCO"],["ENFANTS TERRIBLES","COLUMBINE"],["JEU DE COULEURS","FRENETIK"],["HERA","GEORGIO"],["SANTA SAUCE 2","HAMZA"],["CHAISE PLIANTE","HATIK"],["LA VIE AUGMENTE, VOL 3","ISHA"],["JOK'CHIRAC (VI REPUBLIQUE)","JOK'AIR"],["SOUS COTE","KEY LARGO"],["FAME","LEFA"],["WSHHH","OLDPEE"],["PRIMERA TEMPORADA","ZUUKOU MAYZIE"],["POUR DE VRAI","ICHON"]]
        
        let albumexpertfrancophone = [["24","24"],["140 BPM 2","140 BPM 2"],["ADC","ADC"],["AKIMBO","AKIMBO"],["BLO II","BLO II"],["CONFIANCE","CONFIANCE"],["CORLEONE","CORLEONE"],["DANS LA LEGENDE","DANS LA LEGENDE"],["DUC","DUC"],["GAMBINERIE","GAMBINERIE"],["GEAR 2","GEAR 2"],["GEAR 3","GEAR 3"],["JE NE ME VOIS PAS BRILLER","JE NE ME VOIS PAS BRILLER"],["JUSQU'AUX ETOILES","JUSQU'AUX ETOILES"],["L'AFFRANCHI","L'AFFRANCHI"],["L'ELU","L'ELU"],["LA MELO EST GANGX","LA MELO EST GANGX"],["LE CODE DE L'HORREUR","LE CODE DE L'HORREUR"],["LIENS DU 100","LIENS DU 100"],["LUNATIC","LUNATIC"],["MES REPERES","MES REPERES"],["NE2S","NE2S"],["NI","NI"],["NIQUE LE CASINO","NIQUE LE CASINO"],["OCHO","OCHO"],["OYOKI","OYOKI"],["PANTHEON","PANTHEON"],["PLUS COMME AVANT","PLUS COMME AVANT"],["QUARTIERS NORD","QUARTIERS NORD"],["QUE LA FAMILLE","QUE LA FAMILLE"],["SURVIE","SURVIE"],["TEMPS MORT","TEMPS MORT"],["TRAP$STAR 2","TRAP$STAR 2"],["TRINITY","TRINITY"],["WELCOME TO SKYLAND","WELCOME TO SKYLAND"],["ALBUM_ZIFUKORO","ZIFUKORO"],["100 VISAGES","100 VISAGES"],["CHAISE PLIANTE","CHAISE PLIANTE"],["DETAIL","DETAIL"],["DEUX FRERES","DEUX FRERES"],["DIAMANT DU BLED","DIAMANT DU BLED"],["DNK","DNK"],["ENNA","ENNA"],["ERRR","ERRR"],["FLIP","FLIP"],["JVLIVS II","JVLIVS II"],["KMT","KMT"],["LA VIE EST BELLE","LA VIE EST BELLE"],["LE BRUIT DE MON AME","LE BRUIT DE MON AME"],["LMF","LMF"],["MELO","MELO"],["MR SAL","MR SAL"],["OUEST SIDE","OUEST SIDE"],["SINCEREMENT","SINCEREMENT"],["TVX","TVX"]]
        
        let expertanglophone = [["STILL STRIVING","A$AP FERG"], ["LIL BOAT 3","LIL YACHTY"], ["TRAPSOUL","BRYSON TILLER"], ["DEADSTAR","SMOKEPURPP"], ["MADE IN THE PYREX","DIGGA D"], ["I AM YOU","YNW MELLY"], ["BANG 3","CHIEF KEEF"], ["SLAUGHTER KING","21 SAVAGE"], ["SREMMLIFE 2","RAE SREMMURD"], ["JEFFERY","YOUNG THUG"], ["WHY YOU LYING","9LOKKNINE"], ["WUNNA","GUNNA"], ["LIVELOVEA$AP","A$AP ROCKY"], ["BLANK FACE LP","SCHOOLBOY Q"], ["DIE LIT","PLAYBOI CARTI"], ["DARK SKY PARADISE","BIG SEAN"], ["EVERYBODY LOOKING","GUCCI MANE"],["THE PERFECT LUV TAPE","LIL UZI VERT"],["PSYCHODRAMA","DAVE"],["DYING TO LIVE","KODAK BLACK"],["DEXTER THE ROBOT","FAMOUS DEX"],["MORE LIFE","DRAKE"],["THE MELODIC BLUE","BABY KEEM"],["7220","LIL DURK"],["MEMORIES DON'T DIE","TORY LANEZ"],["SOS","SZA"],["NUDY LAND","YOUNG NUDY"],["HUMAN","$NOT"],["A N N I V E R S A R Y","BRYSON TILLER"],["HEAVEN OR HELL","DON TOLIVER"],["SEARCH & RESCUE","DRAKE"],["MONTANA","FRENCH MONTANA"],["DELUSIONS OF GRANDEUR","GUCCI MANE"],["JACKBOYS","JACKBOYS"],["THE COLLEGE DROPOUT","KANYE WEST"],["YE","KANYE WEST"],["THE LIFE OF PABLO","KANYE WEST"],["TO PIMP A BUTTERFLY","KENDRICK LAMAR"],["YOU ARE FORGIVEN","MADEINTYO"],["DC4","MEEK MILL"],["HEROES & VILLAINS","METRO BOOMIN"],["QUAVO HUNCHO","QUAVO"],["DISRESPECT","SHEFF G"],["STOKELEY","SKI MASK THE SLUMP DOG"],["PEGASUS","TRIPPIE REDD"]]
        
        let albumexpertanglophone = [["2001","2001"],["AMERICAN DREAM","AMERICAN DREAM"],["CULTURE II","CULTURE II"],["DONDA","DONDA"],["DRIP OR DROWN 2","DRIP OR DROWN 2"],["DRIP SEASON 4EVER","DRIP SEASON 4EVER"],["ETERNAL ATAKE","ETERNAL ATAKE"],["I AM_I WAS","I AM > I WAS"],["ILLMATIC","ILLMATIC"],["IT WAS WRITTEN","IT WAS WRITTEN"],["LEGENDS NEVER DIE","LEGENDS NEVER DIE"],["LIL BOAT 2","LIL BOAT 2"],["LIL BOAT","LIL BOAT"],["LUV IS RAGE 2","LUV IS RAGE 2"],["NOTHING WAS THE SAME","NOTHING WAS THE SAME"],["PINK FRIDAY 2","PINK FRIDAY 2"],["PRETTY GIRLS LIKE TRAP MUSIC","PRETTY GIRLS LIKE TRAP MUSIC"],["SAVAGE MODE","SAVAGE MODE"],["SREMMLIFE","SREMMLIFE"],["TAKE CARE","TAKE CARE"],["THE INFAMOUS","THE INFAMOUS"],["THE PINKPRINT","THE PINKPRINT"],["TOP","TOP"],["UTOPIA","UTOPIA"],["WATCH THE THRONE","WATCH THE THRONE"],["WELCOME TO O'BLOCK","WELCOME TO O'BLOCK"],["WHOLE LOTTA RED","WHOLE LOTTA RED"],["17","17"],["AFTER HOURS","AFTER HOURS"],["ALMOST HEALED","ALMOST HEALED"],["BEST FRIEND","BEST FRIEND"],["DC4","DC4"],["DUMMY BOY","DUMMY BOY"],["EVOL","EVOL"],["FUTURE","FUTURE"],["HEROES & VILLAINS","HEROES & VILLAINS"],["IGOR","IGOR"],["JEFFERY","JEFFERY"],["KIRK","KIRK"],["LIL UZI VERT VS THE WORLD","LIL UZI VERT VS THE WORLD"],["QUAVO HUNCHO","QUAVO HUNCHO"],["RODEO","RODEO"],["SREMMLIFE 2","SREMMLIFE 2"],["STOKELEY","STOKELEY"],["THE COLLEGE DROPOUT","THE COLLEGE DROPOUT"],["THE PERFECT LUV TAPE","THE PERFECT LUV TAPE"],["THE WORLD IS YOURS","THE WORLD IS YOURS"],["WUNNA","WUNNA"]]
        
        let impossiblefrancophone = [["DOUBLE 7, VOL 2","MAPESS"],["JE ROULE","KRISY"],["LABRADOR BLEU","ISHA"],["MARATHON","NORSACCE BERLUSCONI"],["MOUHAMMAD ALIX","KERY JAMES"],["NOUVELLE ERE","OSIRUS JACK"],["BENDERO","MOHA LA SQUALE"],["ULTRAP","13 BLOCK"],["WAR","ROSHI"],["HOODBOY","COYOTE JO BASTARD"],["OISEAUX","DJANGO"],["GRAND CRU","DEEN BURBIGO"],["EVOLUTION","TAKE A MIC"]]
        
        let albumimpossiblefrancophone = [["000$","000$"],["ABSENT","ABSENT"],["AMINA","AMINA"],["BINKSHIT","BINKSHIT"],["CHAMBRE 140 (PART1)","CHAMBRE 140 (PART1)"],["DOS ARGENTE","DOS ARGENTE"],["ETAT D'ESPRIT","ETAT D'ESPRIT"],["GARÇON","GARÇON"],["GRAVE DANS LA ROCHE","GRAVE DANS LA ROCHE"],["HEARTBREAK LIFE II","HEARTBREAK LIFE II"],["ICONE","ICONE"],["INACCESIBLE","INACCESIBLE"],["JEUNES ENTREPRENEURS","JEUNES ENTREPRENEURS"],["KPRI TAPE, VOL 1","KPRI TAPE, VOL 1"],["L'AMOUR","L'AMOUR"],["L'ETRANGE HISTOIRE DE MRANDERSON","L'ETRANGE HISTOIRE DE MRANDERSON"],["LA NUIT DU REVEIL","LA NUIT DU REVEIL"],["LA VIE DE LUXE","LA VIE DE LUXE"],["LAÏLA","LAÏLA"],["LE ROHFF GAME","LE ROHFF GAME"],["LE SOLEIL NE S'ÉTEINT JAMAIS","LE SOLEIL NE S'ÉTEINT JAMAIS"],["MILA 809","MILA 809"],["NO CRARI","NO CRARI"],["NO FACE","NO FACE"],["NOIR DESIR","NOIR DESIR"],["OMEGA","OMEGA"],["ONLY FANS","ONLY FANS"],["PACIFIQUE","PACIFIQUE"],["PAR AMOUR ET POUR LE GESTE","PAR AMOUR ET POUR LE GESTE"],["PARADIS D'AMOUR","PARADIS D'AMOUR"],["POURVU QU'IL PLEUVE","POURVU QU'IL PLEUVE"],["QUI SUIS-JE","QUI SUIS-JE ?"],["RAP MACHINE","RAP MACHINE"],["RESCAPE DES RUES (RR 700FS)","RESCAPE DES RUES (RR 700FS)"],["SAISON 2","SAISON 2"],["SERANEZIE","SERANEZIE"],["SURNATUREL","SURNATUREL"],["THC","THC"],["VOUS ETES PAS CONTENTS ? TRIPLE !","VOUS ETES PAS CONTENTS ? TRIPLE !"],["AVENUE DE ST ANTOINE","AVENUE DE ST ANTOINE"],["BUSHI","BUSHI"],["CDC4","CDC4"],["DOUBLE 7, Vol 2","DOUBLE 7, Vol 2"],["EVOLUTION","EVOLUTION"],["ILLUSIONS","ILLUSIONS"],["INFINIGGA","INFINIGGA"],["JO$","JO$"],["JEU DE COULEURS","JEU DE COULEURS"],["MAFANA","MAFANA"],["MARATHON","MARATHON"],["NOUVELLE ERE","NOUVELLE ERE"],["NUIT","NUIT"],["PERESTROÏKA","PERESTROÏKA"],["POUR DE VRAI","POUR DE VRAI"],["PRECIEUX","PRECIEUX"],["PRIMERA TEMPORADA","PRIMERA TEMPORADA"],["SACRIFICES","SACRIFICES"],["SELECTION NATURELLE","SELECTION NATURELLE"],["SOUS COTE","SOUS COTE"],["SPLIT","SPLIT"],["THE NORTH DOESN'T FORGET","THE NORTH DOESN'T FORGET"],["ULTRAP","ULTRAP"],["VIDE","VIDE"],["WAR","WAR"]]
        
        let impossibleanglophone = [["COLORING BOOK","CHANCE THE RAPPER"],["THE LION KING: THE GIFT","BEYONCE"],["I DECIDED","BIG SEAN"],["BLONDE","FRANK OCEAN"],["SONDER SON","BRENT FAIYAZ"],["THE BIG DAY","CHANCE THE RAPPER"],["TA13OO","DENZEL CURRY"],["BACK TO BACK","DRAKE"],["HNDRXX","FUTURE"],["EVOL","FUTURE"],["TM104: THE LEGEND OF THE SNOWMAN","JEEZY"],["IT WAS GOOD UNTIL IT WASN'T","KEHLANI"],["CYNCERELY, C3","KING COMBS"],["SLAUSON BOY 2","NIPSEY HUSSLE"],["REMEMBER MY NAME","LIL DURK"],["AMEN","RICH BRIAN"],["BARNACLES","SAHBABII"],["BIG 4X","STUNNA 4 VEGAS"],["EVERYTHING IS LOVE","THE CARTERS"],["KHALIFA","WIZ KHALIFA"],["GLITCH","YUNG KAYO"]]
        
        let albumimpossibleanglophone = [["- TRAGEDY +","- TRAGEDY +"],["#SANTANAWORLD(+)","#SANTANAWORLD(+)"],["A GHETTO CHRISTMAS CAROL","A GHETTO CHRISTMAS CAROL"],["A GIRL CRIED RED","A GIRL CRIED RED"],["A LOVE LETTER TO YOU 2","A LOVE LETTER TO YOU 2"],["A LOVE LETTER TO YOU 3","A LOVE LETTER TO YOU 3"],["A LOVE LETTER TO YOU 4","A LOVE LETTER TO YOU 4"],["A LOVE LETTER TO YOU","A LOVE LETTER TO YOU"],["ALBUM_MADE IN THE PYREX","ALBUM_MADE IN THE PYREX"],["BABY ON BABY","BABY ON BABY"],["BIRDS IN THE TRAP SING MCKNIGHT","BIRDS IN THE TRAP SING MCKNIGHT"],["BLAME IT ON BABY","BLAME IT ON BABY"],["BUSINESS IS BUSINESS","BUSINESS IS BUSINESS"],["DEADSTAR 2","DEADSTAR 2"],["DIE FOR MY BITCH","DIE FOR MY BITCH"],["DREAMS WORTH MORE THAN MONEY","DREAMS WORTH MORE THAN MONEY"],["ELLA MAI","ELLA MAI"],["FLEX MUZIK","FLEX MUZIK"],["FLOWER BOY","FLOWER BOY"],["FOR ALL THE DOGS","FOR ALL THE DOGS"],["HALL OF FAME","HALL OF FAME"],["HER LOSS","HER LOSS"],["HERSTORY IN THE MAKING","HERSTORY IN THE MAKING"],["HERSTORY","HERSTORY"],["I AM NOT A HUMAN BEING II","I AM NOT A HUMAN BEING II"],["I NEVER LIKED YOU","I NEVER LIKED YOU"],["IN MY OWN WORDS","IN MY OWN WORDS"],["KOD","KOD"],["LAST DAY OF SUMMER","LAST DAY OF SUMMER"],["LEGENDS OF THE SUMMER","LEGENDS OF THE SUMMER"],["MAGNA CARTA HOLY GRAIL","MAGNA CARTA HOLY GRAIL"],["NOSTALGIA","NOSTALGIA"],["NUTHIN' 2 PROVE","NUTHIN' 2 PROVE"],["ONEPOINTFIVE","ONEPOINTFIVE"],["PUNK","PUNK"],["SHOOT FOR THE STARS AIM FOR THE MOON","SHOOT FOR THE STARS AIM FOR THE MOON"],["SLIME SEASON 3","SLIME SEASON 3"],["SURVIVOR","SURVIVOR"],["THE LIFE OF PI'ERRE 4","THE LIFE OF PI'ERRE 4"],["THE LIFE OF PI'ERRE 5","THE LIFE OF PI'ERRE 5"],["THE OFF-SEASON","THE OFF-SEASON"],["THE SAILOR","THE SAILOR"],["THE SOUND OF BAD HABIT","THE SOUND OF BAD HABIT"],["TRUST NO ONE","TRUST NO ONE"],["VIRGO WORLD","VIRGO WORLD"],["WE'RE ALL ALONE IN THIS TOGETHER","WE'RE ALL ALONE IN THIS TOGETHER"],["WHAT A TIME TO BE ALIVE","WHAT A TIME TO BE ALIVE"],["BIG 4X","BIG 4X"],["BLANK FACE LP","BLANK FACE LP"],["DARK LANE DEMO TAPES","DARK LANE DEMO TAPES"],["DARK SKY PARADISE","DARK SKY PARADISE"],["DEADSTAR","DEADSTAR"],["DYING TO LIVE","DYING TO LIVE"],["EVERYBODY LOOKING","EVERYBODY LOOKING"],["EVERYTHING IS LOVE","EVERYTHING IS LOVE"],["GLITCH","GLITCH"],["HNDRXX","HNDRXX"],["I DECIDED","I DECIDED"],["MY BEAUTIFUL DARK TWISTED FANTASY","MY BEAUTIFUL DARK TWISTED FANTASY"],["NOT ALL HEROES WEAR CAPES","NOT ALL HEROES WEAR CAPES"],["SONDER SON","SONDER SON"],["SOS","SOS"],["STILL STRIVING","STILL STRIVING"],["TA13OO","TA13OO"],["THE MELODIC BLUE","THE MELODIC BLUE"],["YE","YE"],["YOU ARE FORGIVEN","YOU ARE FORGIVEN"]]
        
        //["fr 🇫🇷","us 🇺🇸","mix 🇫🇷🇺🇸"]
        
        if cover == "Facilemix 🇫🇷🇺🇸" {
            return facilefrancophone+facileanglophone
        }
        
        else if cover == "Facilefr 🇫🇷" {
            return facilefrancophone
        }
        
        else if cover == "albumFacilemix 🇫🇷🇺🇸"{
            return albumfacilefrancophone+albumfacileanglophone
        }
        
        else if cover == "albumFacilefr 🇫🇷"{
            return albumfacilefrancophone
        }
        
        else if cover == "albumFacileus 🇺🇸"{
            return albumfacileanglophone
        }
        
        else if cover == "Facileus 🇺🇸" {
            return facileanglophone
        }
        
        else if cover == "albumMoyenmix 🇫🇷🇺🇸"{
            return albummoyenfrancophone+albummoyenanglophone
        }
        
        else if cover == "Moyenfr 🇫🇷" {
            return moyenfrancophone
        }
        
        else if cover == "albumMoyenfr 🇫🇷"{
            return albummoyenfrancophone
        }
        
        else if cover == "Moyenus 🇺🇸" {
            return moyenanglophone
        }
        
        else if cover == "albumMoyenus 🇺🇸"{
            return albummoyenanglophone
        }
        
        else if cover == "Expertmix 🇫🇷🇺🇸" {
            return expertfrancophone+expertanglophone
        }
        
        else if cover == "albumExpertmix 🇫🇷🇺🇸" {
            return albumexpertfrancophone+albumexpertanglophone
        }
        
        else if cover == "Expertfr 🇫🇷" {
            return expertfrancophone
        }
        
        else if cover == "albumExpertfr 🇫🇷" {
            return albumexpertfrancophone
        }
        
        else if cover == "Expertus 🇺🇸" {
            return expertanglophone
        }
        
        else if cover == "albumExpertus 🇺🇸" {
            return albumexpertanglophone
        }
        
        else if cover == "Impossiblemix 🇫🇷🇺🇸" {
            return impossiblefrancophone+impossibleanglophone
        }
        
        else if cover == "albumImpossiblemix 🇫🇷🇺🇸" {
            return albumimpossiblefrancophone+albumimpossibleanglophone
        }
        
        else if cover == "Impossiblefr 🇫🇷" {
            return impossiblefrancophone
        }
        
        else if cover == "albumImpossiblefr 🇫🇷" {
            return albumimpossiblefrancophone
        }
        
        else if cover == "Impossibleus 🇺🇸" {
            return impossibleanglophone
        }
        
        else if cover == "albumImpossibleus 🇺🇸" {
            return albumimpossibleanglophone
        }
        
        else if cover == "Mixmix 🇫🇷🇺🇸" {
            return facilefrancophone+facileanglophone+moyenfrancophone+moyenanglophone+expertfrancophone+expertanglophone+impossiblefrancophone+impossibleanglophone
        }
        
        else if cover == "albumMixmix 🇫🇷🇺🇸" {
            return albumfacilefrancophone+albumfacileanglophone+albummoyenfrancophone+albummoyenanglophone+albumexpertfrancophone+albumexpertanglophone+albumimpossiblefrancophone+albumimpossibleanglophone
        }
        
        else if cover == "Mixfr 🇫🇷" {
            return facilefrancophone+moyenfrancophone+expertfrancophone+impossiblefrancophone
        }
        
        else if cover == "albumMixfr 🇫🇷" {
            return albumfacilefrancophone+albummoyenfrancophone+albumexpertfrancophone+albumimpossiblefrancophone
        }
        
        else if cover == "Mixus 🇺🇸" {
            return facileanglophone+moyenanglophone+expertanglophone+impossibleanglophone
        }
        
        else if cover == "albumMixus 🇺🇸" {
            return albumfacileanglophone+albummoyenanglophone+albumexpertanglophone+albumimpossibleanglophone
        }
        
        else if cover == "tout"{
            return  facilefrancophone+facileanglophone+moyenfrancophone+moyenanglophone+expertfrancophone+expertanglophone+impossiblefrancophone+impossibleanglophone+albumfacilefrancophone+albumfacileanglophone+albummoyenfrancophone+albummoyenanglophone+albumexpertfrancophone+albumexpertanglophone+albumimpossiblefrancophone+albumimpossibleanglophone
        }
        
        return moyenfrancophone+moyenanglophone
    }
    
    //titre du son , nom du fichier audio
    func getSounds(_ sons: String)-> [[String]]{
        let facilefrancophone = [["SALE MOOD","SALE MOOD"],["MEDICAMENT","MEDICAMENT"],["COMMANDO","COMMANDO"],["KALASH","KALASH"],["CARAMEL","CARAMEL"],["92I VEYRON","92I VEYRON"],["MA JOLIE","MA JOLIE"],["PRINCESSE","PRINCESSE"],["BRUXELLESVIE","BRUXELLESVIE"],["J'AURAIS PAS DU","J'AURAIS PAS DU"],["EGERIE","EGERIE"],["BATIMENT","BATIMENT"],["MADRINA","MADRINA"],["MON KIKI","MON KIKI"],["BRIGANTE","BRIGANTE"],["MERCE","MERCE"],["TOKYO","TOKYO"],["BEBETO","BEBETO"],["EMOTIF","EMOTIF"],["ALORS ON DANSE","ALORS ON DANSE"],["MWAKA MOON","MWAKA MOON"],["RESEAUX","RESEAUX"],["PAPERS","PAPERS"],["CHASSE A L'HOMME","CHASSE A L'HOMME"],["ARRET DU COEUR","ARRET DU COEUR"],["TRAIN DE VIE","TRAIN DE VIE"]]
        
        let facileanglophone = [["GUCCI GANG","GUCCI GANG"],["I DON'T LIKE","I DON'T LIKE"],["GUMMO","GUMMO"],["CHECK","CHECK"],["TURN ON THE LIGHTS","TURN ON THE LIGHTS"],["NO HEART","NO HEART"],["LIL PUMP","LIL PUMP"],["SHOTTA FLOW","SHOTTA FLOW"],["CALL CASTING","CALL CASTING"],["LOCATION","LOCATION"],["ANTIDOTE","ANTIDOTE"],["DO WHAT I WANT","DO WHAT I WANT"],["ANACONDA","ANACONDA"],["BABY","BABY"],["BAD AND BOUJEE","BAD AND BOUJEE"],["BLACK AND YELLOW","BLACK AND YELLOW"],["CRANK THAT","CRANK THAT"],["DIAMONDS","DIAMONDS"],["DILEMMA","DILEMMA"],["DIOR","DIOR"],["DRIP TOO HARD","DRIP TOO HARD"],["FEELING MYSELF","FEELING MYSELF"],["HOT","HOT"],["HUMBLE","HUMBLE"],["JUJU ON THAT BEAT","JUJU ON THAT BEAT"],["JUMPMAN","JUMPMAN"],["LOLLIPOP","LOLLIPOP"],["LONELY","LONELY"],["LOOK ALIVE","LOOK ALIVE"],["MOTORSPORT","MOTORSPORT"],["NEW PATEK","NEW PATEK"],["ONE DANCE","ONE DANCE"],["RANSOM","RANSOM"],["ROCKSTAR","ROCKSTAR"],["SKY","SKY"],["STARSHIPS","STARSHIPS"],["STRONGER","STRONGER"],["TOO MUCH SAUCE","TOO MUCH SAUCE"],["TRAP QUEEN","TRAP QUEEN"],["TUESDAY","TUESDAY"],["WE PAID","WE PAID"],["WORK","WORK"]]
        
        let moyenfrancophone = [["PITBULL","PITBULL"],["TERRASSER","TERRASSER"],["BLACK DANCE","BLACK DANCE"],["MAITRE CHIEN","MAITRE CHIEN"],["63","63"],["NORMAL","NORMAL"],["SEVRAN","SEVRAN"],["ON N'EST PAS TOUT SEUL","ON N'EST PAS TOUT SEUL"],["A7","A7"],["TIEKS","TIEKS"],["DISQUE D'OR","DISQUE D'OR"],["JE BIBI","JE BIBI"],["QUAND JE PARTIRAI","QUAND JE PARTIRAI"],["SAN PELLEGRINO","SAN PELLEGRINO"],["LES P'TITS DE CHEZ MOI","LES P'TITS DE CHEZ MOI"],["GUERILLA","GUERILLA"],["MON AME","MON AME"],["VENUS","VENUS"],["SOMBRE MELODIE","SOMBRE MELODIE"],["RR 91","RR 91"],["LA MORT LEUR VA SI BIEN","LA MORT LEUR VA SI BIEN"],["MAUVAISE GRAINE","MAUVAISE GRAINE"],["J'SUIS DANS L'BAYE","J'SUIS DANS L'BAYE"],["EXUTOIRE","EXUTOIRE"],["FINIS LES","FINIS LES"],["PERISCOPE","PERISCOPE"],["J'SUIS DANS LES WAYES","J'SUIS DANS LES WAYES"],["KUTA UBUD","KUTA UBUD"],["MOI JE VERIFIE","MOI JE VERIFIE"],["DOUBLE BANG 6","DOUBLE BANG 6"],["TELLEMENT GANG","TELLEMENT GANG"],["LA ZONE EST MINEE","LA ZONE EST MINEE"],["SALE HISTOIRE","SALE HISTOIRE"],["DANS LA SOUCOUPE","DANS LA SOUCOUPE"],["AMNESIA","AMNESIA"],["QUI PEUT ME STOPPER","QUI PEUT ME STOPPER"],["TROPHEE","TROPHEE"],["FAUT QUE","FAUT QUE"],["MIRA","MIRA"],["TIENS TON PANTALON","TIENS TON PANTALON"],["BENZEMA","BENZEMA"],["TOUT EST CALE","TOUT EST CALE"]]
        
        let moyenanglophone = [["MONEY LONGER","MONEY LONGER"],["MAGNOLIA","MAGNOLIA"],["POKE IT OUT","POKE IT OUT"],["SAUCE IT UP","SAUCE IT UP"],["PRAISE THE LORD","PRAISE THE LORD"],["ELEMENTARY","ELEMENTARY"],["MONSTER","MONSTER"],["PAIN 1993","PAIN 1993"],["21 QUESTIONS","21 QUESTIONS"],["ALL THE WAY UP","ALL THE WAY UP"],["AYO","AYO"],["BODAK YELLOW","BODAK YELLOW"],["BOP","BOP"],["CAN'T LEAVE WITHOUT IT","CAN'T LEAVE WITHOUT IT"],["CAN'T TELL ME NOTHING","CAN'T TELL ME NOTHING"],["CANDY SHOP","CANDY SHOP"],["CRAZY","CRAZY"],["D ROSE","D ROSE"],["FEDS DID A SWEEP","FEDS DID A SWEEP"],["FEFE","FEFE"],["FLATBED FREESTYLE","FLATBED FREESTYLE"],["FREESTYLE","FREESTYLE"],["FUKUMEAN","FUKUMEAN"],["FUTSAL SHUFFLE 2020","FUTSAL SHUFFLE 2020"],["GIMMICK","GIMMICK"],["GOLD DIGGER","GOLD DIGGER"],["GUN LEAN","GUN LEAN"],["HEADLINES","HEADLINES"],["HIT THE QUAN","HIT THE QUAN"],["I'M DIFFERENT","I'M DIFFERENT"],["I'M THE ONE","I'M THE ONE"],["IN MY FEELINGS","IN MY FEELINGS"],["JUST A LIL BIT","JUST A LIL BIT"],["LOCKED UP","LOCKED UP"],["LOOK AT ME NOW","LOOK AT ME NOW"],["LOVE ME","LOVE ME"],["LOVE SCARS","LOVE SCARS"],["LOYAL","LOYAL"],["MAN DOWN","MAN DOWN"],["MIRROR","MIRROR"],["MO BAMBA","MO BAMBA"],["MOLLY","MOLLY"],["MOONLIGHT","MOONLIGHT"],["MY BOO","MY BOO"],["NO TIME","NO TIME"],["ONE TIME","ONE TIME"],["PILLS N POTIONS","PILLS N POTIONS"],["PLAYING GAMES","PLAYING GAMES"],["PLUG WALK","PLUG WALK"],["POP","POP"],["PRETTY BOY SWAG","PRETTY BOY SWAG"],["PULL UP","PULL UP_CARTI"],["PUSHIN P","PUSHIN P"],["RIC FLAIR DIP","RIC FLAIR DIP"],["RIP","RIP"],["ROXANNE","ROXANNE"],["STARTED FROM THE BOTTOM","STARTED FROM THE BOTTOM"],["SWANG","SWANG"],["SWIMMING POOLS","SWIMMING POOLS"],["TEMPERATURE","TEMPERATURE"],["THE NEXT EPISODE","THE NEXT EPISODE"],["THIS IS AMEIRCA","THIS IS AMERICA"],["U REMIND ME","U REMIND ME"],["VAMP ANTHEM","VAMP ANTHEM"],["WELCOME TO THE PARTY","WELCOME TO THE PARTY"],["WICKED","WICKED"],["WIT IT","WIT IT"],["WORK HARD, PLAY HARD","WORK HARD, PLAY HARD"],["WORST BEHAVIOR","WORST BEHAVIOR"],["XO TOUR LLIF3","XO TOUR LLIF3"]]
        
        let expertfrancophone = [["ACTE DE BURBERRY","ACTE DE BURBERRY"],["FOUR","FOUR"],["GUEDRO","GUEDRO"],["2014 A L'INFINI","2014 A L'INFINI"],["CARACAS","CARACAS"],["140G","140G"],["HOMME DE L'OMBRE","HOMME DE L'OMBRE"],["ALLO MAITRE SIMONARD","ALLO MAITRE SIMONARD"],["CATCH UP","CATCH UP"],["75022","75022"],["ON VA LES FAIRE","ON VA LES FAIRE"],["BOUG MWEN","BOUG MWEN"],["14","14"],["TERRAIN","TERRAIN"],["MURDER 20","MURDER 20"],["CE SOIR","CE SOIR"],["HARAJUKU","HARAJUKU"],["CRESUS","CRESUS"],["TONY SOSA","TONY SOSA"],["PAS JOLI","PAS JOLI"],["RAFALE 4","RAFALE 4"],["HONEY","HONEY"],["SHARIF","SHARIF"],["BELLES FEMMES","BELLES FEMMES"],["A PART CA","A PART CA"],["MON GLOCK TE METTRA A GENOUX","MON GLOCK TE METTRA A GENOUX"],["CRU","CRU"],["GOMU BANG","GOMU BANG"],["MARTIAL ANTHONY","MARTIAL ANTHONY"],["QUADRILLE","QUADRILLE"],["COCHI","COCHI"],["BELEK","BELEK"],["GAUCHO","GAUCHO"],["VOIS T'AS VU","VOIS T'AS VU"],["CAPELOVICI","CAPELOVICI"],["BOSTON GEORGE","BOSTON GEORGE"],["BERRY","BERRY"],["LA RUE","LA RUE"],["DANS LE BENDO","DANS LE BENDO"],["EVERYDAY","EVERYDAY"],["MINI MINUIT","MINI MINUIT"],["SANS REFRAIN","SANS REFRAIN"],["C'EST CA LE THEME","C'EST CA LE THEME"],["NO HOOK 2","NO HOOK 2"],["SOBIESKI","SOBIESKI"],["BEDO","BEDO"],["LA RUE LA VRAIE","LA RUE LA VRAIE"],["IGNORANT","IGNORANT"],["92I","92I"],["EN ESPRIT","EN ESPRIT"],["COMPLETEMENT REBANAV","COMPLETEMENT REBANAV"]]
        
        let expertanglophone = [["DIE TODAY","DIE TODAY"],["WE DEM BOYZ","WE DEM BOYZ"],["LIFESTYLE","LIFESTYLE"],["HOOKAH","HOOKAH"],["KUSH","KUSH"],["OK DEXTER","OK DEXTER"],["BEST FRIEND","BEST FRIEND"],["EARFQUAKE","EARFQUAKE"],["PROTECT YA NECK","PROTECT YA NECK"],["DON'T","DON'T"],["BUTTERFLY EFFECT","BUTTERFLY EFFECT"],["TUNNEL VISION","TUNNEL VISION"],["SARAN PACK","SARAN PACK"],["MEMO","MEMO"],["DIP DIP","DIP DIP"],["ANGELS","ANGELS"],["PESO","PESO"],["FEELING GOOD","FEELING GOOD"],["RUBBIN OF THE PAINT","RUBBIN OF THE PAINT"],["NO 9","NO 9"],["OLD MONEY","OLD MONEY"],["HELL SHELL","HELL SHELL"],["MAKE IT RAIN","MAKE IT RAIN"]]
        
        let impossiblefrancophone = [["SKY PARTY","SKY PARTY"],["J'ACCOSTE EN SURVET","J'ACCOSTE EN SURVET"],["DOPE","DOPE"],["BOSS 2 PANAM","BOSS 2 PANAM"],["CHARO","CHARO"],["DJANGO","DJANGO"],["REMONTADA","REMONTADA"],["ROCCO MORABITO","ROCCO MORABITO"],["SOMMEIL","SOMMEIL"],["MARVEL","MARVEL"],["BECKENPOWER","BECKENPOWER"],["LADY MELODIE","LADY MELODIE"],["C'EST NOUS","C'EST NOUS"],["200","200"],["MAPESSA","MAPESSA"],["OSWALD COBBLEPOT","OSWALD COBBLEPOT"],["MIC MAC","MIC MAC"],["FLY EMIRATES","FLY EMIRATES"],["PLUS VITE QUE LES BALLES","PLUS VITE QUE LES BALLES"],["ENCORE UNE MALETTE","ENCORE UNE MALETTE"],["FLOCKO","FLOCKO"],["BIENVENUE DANS LE XV","BIENVENUE DANS LE XV"],["OBLIGER DE CHARBONNER","OBLIGER DE CHARBONNER"],["TONY MONTANA","TONY MONTANA"],["LA BISE","LA BISE"],["GRANDE MARINIERE","GRANDE MARINIERE"],["BATARASALASS #2","BATARASALASS #2"],["C'EST RIEN C'EST LA CALLE","C'EST RIEN C'EST LA CALLE"],["GANG BOY","GANG BOY"],["MIDI MIDI","MIDI MIDI"],["FULL RIQUET","FULL RIQUET"],["NO LACKIN","NO LACKIN"],["DONQUIXOTE DOFLAMINGO","DONQUIXOTE DOFLAMINGO"],["APU","APU"],["MODE AVION","MODE AVION"],["LUFFY","LUFFY"],["EAUX TROUBLES","EAUX TROUBLES"],["9 MILLI","9 MILLI"],["DUBBLE KILLA","DUBBLE KILLA"],["RAP GENIUS","RAP GENIUS"],["MONSTRES ET VILAINS","MONSTRES ET VILAINS"],["T'ES TARPIN LIGHT","T'ES TARPIN LIGHT"],["PROMETHAZINE","PROMETHAZINE"],["HOLA UN NIAR","HOLA UN NIAR"],["SAMOSA","SAMOSA"],["JEUNE DE CITE","JEUNE DE CITE"],["BINKS","BINKS"],["CRACK MONEY","CRACK MONEY"],["PULL UP","PULL UP"],["LYONZON PAS VOS AFFAIRES","LYONZON PAS VOS AFFAIRES"],["BRACELET","BRACELET"],["METHODE","METHODE"],["BLUE MAGIC","BLUE MAGIC"],["RELOU","RELOU"],["TROP MIS","TROP MIS"],["BRESIL","BRESIL"],["JAPON","JAPON"],["DANS L'TIEKS","DANS L'TIEKS"],["AIRBUS","AIRBUS"]]
        
        let impossibleanglophone = [["PLAY IT BACK","PLAY IT BACK"],["3HUNNA K","3HUNNA K"],["SKEPTA INTERLUDE","SKEPTA INTERLUDE"],["AUDI","AUDI"],["ONE FOOT","ONE FOOT"],["GOSPEL","GOSPEL"],["FREE K$UPREME FREESTYLE","FREE K$UPREME FREESTYLE"],["LEMONADE","LEMONADE"],["GOTTA BLAST","GOTTA BLAST"]]
        
        if sons == "Facilemix 🇫🇷🇺🇸" {
            return facilefrancophone+facileanglophone
        }
        
        else if sons == "Facilefr 🇫🇷" {
            return facilefrancophone
        }
        
        else if sons == "Facileus 🇺🇸" {
            return facileanglophone
        }
        
        else if sons == "Moyenmix 🇫🇷🇺🇸" {
            return moyenfrancophone+moyenanglophone
        }
        
        else if sons == "Moyenfr 🇫🇷"{
            return moyenfrancophone
        }
        
        else if sons == "Moyenus 🇺🇸"{
            return moyenanglophone
        }
        
        else if sons == "Expertmix 🇫🇷🇺🇸" {
            return expertfrancophone+expertanglophone
        }
        
        else if sons == "Expertfr 🇫🇷"{
            return expertfrancophone
        }
        
        else if sons == "Expertus 🇺🇸"{
            return expertanglophone
        }
        
        else if sons == "Impossiblemix 🇫🇷🇺🇸" {
            return impossiblefrancophone+impossibleanglophone
        }
        
        else if sons == "Impossiblefr 🇫🇷"{
            return impossiblefrancophone
        }
        
        else if sons == "Impossibleus 🇺🇸"{
            return impossibleanglophone
        }
        
        else if sons == "Mixfr 🇫🇷" {
            return facilefrancophone+moyenfrancophone+expertfrancophone+impossiblefrancophone
        }
        
        else if sons == "Mixus 🇺🇸" {
            return facileanglophone+moyenanglophone+expertanglophone+impossibleanglophone
        }
        
        else if sons == "Mixmix 🇫🇷🇺🇸" {
            return facilefrancophone+facileanglophone+moyenfrancophone+moyenanglophone+expertfrancophone+expertanglophone+impossiblefrancophone+impossibleanglophone
        }
        
        return [[""]]
    }
    
    func whippin(_ modeson : Bool, _ pays: String, _ niveau: String, _ nbtours : Int) -> [[String]]{
        var liste = quelLevel(niveau+pays)
        if modeson{
            liste = getSounds(niveau+pays)
        }
        
        var liste_whippin : [[String]] = [[]]
        var indexs : [Int] = []
        
        var nbrtours = nbtours
        
        if nbrtours >= liste.count{
            nbrtours = liste.count-1
        }
        
        for i in 0...liste.count-1{
            indexs.append(i)
        }
    
        indexs.shuffle()
        
        liste_whippin[0] = liste[indexs[0]]
        
        for i in 1...nbrtours{
            liste_whippin.append(liste[indexs[i]])
        }
       
        return liste_whippin
    }
    
    func uniqueartiste(_ pays: String, _ niveau : String, _ nbtours : Int) -> [[String]]{
        let liste = quelLevel(niveau+pays)
        var liste_unique : [[String]] = [[]]
        var indexs : [Int] = []
        var i = 0
        
        for i in 0...liste.count-1{
            indexs.append(i)
        }
    
        indexs.shuffle()
        
        liste_unique[0] = liste[indexs[0]]
        
        while liste_unique.count < nbtours{
            if !artistepresent(liste_unique, liste[indexs[i]][1]){
                liste_unique.append(liste[indexs[i]])
            }
            else{
                i += 1
            }
            i += 1
        }

        return liste_unique
    }
    
    func artistepresent(_ liste : [[String]],_ artiste : String) -> Bool{
        for element in liste{
            if element[1] == artiste{
                return true
            }
        }
        return false
    }
    
    func nbtoursmaximum(_ modeson : Bool, _ pays: String, _ niveau : String) -> Int{
        var liste = quelLevel(niveau+pays)
        if modeson{
            liste = getSounds(niveau+pays)
        }
        var liste_unique : [[String]] = [[]]
        var indexs : [Int] = []
        var i = 0
        
        for i in 0...liste.count-1{
            indexs.append(i)
        }
    
        indexs.shuffle()
        
        liste_unique[0] = liste[indexs[0]]
        
        while i < indexs.count{
            if !artistepresent(liste_unique, liste[indexs[i]][1]){
                liste_unique.append(liste[indexs[i]])
            }
            else{
                i += 1
            }
            i += 1
        }

        return liste_unique.count
    }

    func toTab(_ texte: String) -> [String]{
        var texte_tab : [String] = []
        
        for lettre in texte{
            if String(lettre) != "." {
                texte_tab.append(String(lettre))
            }
        }
        
        
        return texte_tab
    }
    
    func equals(_ proposition: String, _ mot : String) -> Bool{
        let variante_a = ["A","À","Â","Á","Ä"]
        let variante_e = ["É","È","Ê","Ë","E"]
        let variante_i = ["Î","Ï","I"]
        let variante_o = ["Ô","Ö","O"]
        let variante_u = ["Û","Ù","Ü","Ú","U"]
        let variante_apostrophe = ["´","ˋ","´","’","'"]
        
        let proposition_tab = toTab(proposition)
        let mot_tab = toTab(mot)
        
        if proposition_tab != mot_tab{
            if proposition_tab.count < mot_tab.count {
                return false
            }
            
            else if proposition_tab.count > mot_tab.count{
                if proposition_tab[mot_tab.count] != " "{
                    return false
                }
            }
            
            else{
                var i = 0
                for lettre in mot{
                    
                    if proposition_tab[i] != String(lettre){
                        
                        if variante_a.contains(proposition_tab[i]){
                            if String(lettre) != "A"{
                                return false
                            }
                        }
                        
                        else if variante_e.contains(proposition_tab[i]){
                            if String(lettre) != "E"{
                                return false
                            }
                        }
                        
                        else if variante_i.contains(proposition_tab[i]){
                            if String(lettre) != "I"{
                                return false
                            }
                        }
                        
                        else if variante_o.contains(proposition_tab[i]){
                            if String(lettre) != "O"{
                                return false
                            }
                        }
                        
                        else if variante_u.contains(proposition_tab[i]){
                            if String(lettre) != "U"{
                                return false
                            }
                        }
                        
                        else if variante_apostrophe.contains(proposition_tab[i]){
                            if String(lettre) != "'"{
                                return false
                            }
                        }
                        
                        else{
                            return false
                        }
                    }
                    i += 1
                }
            }
        }
        
        return true
    }
    
    func setAverageColor(_ image : String) -> Color {
        let uiColor = UIImage(named: image)?.averageColor ?? .clear
        let backgroundColor = Color(uiColor)
        
        return backgroundColor
    }
    
    func couleurtexte(_ image : String) -> Color {
        let estClair = isColorLight(image)
        
        if estClair{
            return Color.black
        }
        return Color.white
    }
    
    func isColorLight(_ image : String) -> Bool {
        let uiColor = UIImage(named: image)?.averageColor ?? .clear
        // Calcul de la luminosité de la couleur
        guard let components = uiColor.cgColor.components else {
            return false // La couleur n'a pas de composantes
        }
        
        let red = components[0]
        let green = components[1]
        let blue = components[2]
        
        let luminance = (0.299 * red + 0.587 * green + 0.114 * blue)
        
        return luminance > 0.4 // Si la luminosité est supérieure à 0.4, la couleur est considérée comme claire
    }

    
    func getColorPalette(_ image : String) -> ColorPalette{
        let image = UIImage(named: image)!
        
        
        let colors = try! image.dominantColors()
        let palette = ColorPalette(orderedColors: colors, ignoreContrastRatio: true)
        
        return palette!
    }
}

@Model
final class Variables_model {
    //on initialise le nombre de cover qu'il y aura dans une partie à 6
    var nbtours : Int
    //on initialise le niveau du jeu a moyen
    var defaultniveau : String
    //on initialise le pays avec fr
    var defaultpays : String
    //var desactivercorrecteur : Bool
 
    init(_ nbtours : Int, _ defaultniveau : String, _ defaultpays : String/*, _ scoremax : Int, _ nocorrecteur : Bool*/) {
        self.nbtours = nbtours
        self.defaultniveau = defaultniveau
        self.defaultpays = defaultpays
        //self.desactivercorrecteur = nocorrecteur
     }
    
}

extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
