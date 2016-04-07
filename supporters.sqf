private["_uid"];
_uid = getPlayerUID player;

// Remember the Array format! No comma on last item in array!

// supporters1 = supporters1 + ["76561198067490194"];

supporters1 	  = [
					"76561198092270541", //SAMbro
					"245528838", //[TGS] Joes
					"76561198100072934", //NESKOVICH
					"76561198136955920", //Justin //add as mod
					"76561198125066778",//hunterwilcox
					"76561198085973711", //Savage
					"76561198130424832", //Aidan //ad as mod
					"76561198115199296", //Cpl. Applejack
					"76561198115328844", //Creational
					"76561198094031702", //Mystic.EXE
					"76561198071463315", //Lontra Atomica
					"76561198084473560",//death terrorist/grille
					"76561198069905879", //Swift
					"76561198043681651", //Mez
					"76561198074221979", //DJ-Recon
					"76561198099263770", //illfingas
					"76561198095522901", //Richard Powers
					"76561198051253668", //GusLeah
					"76561198134860865", //Pitiedowl123
					"76561198130908059", //TAG Maggie
					"76561198156256043", //Mbition
					"76561198055843650", //Christian
					"76561198072956372", //TylerDurden
					"76561198013686582", //Hototuken
					"76561198040226209", //Cam
					"76561198020680293", //Petey
					"76561198089358305", //Duffman224
					"76561198126903119", //youmadornah?
					"76561198025752140", //Rehlief
					"76561198135961670", //kalashnikov
					"76561198101357588", //preznixon
					"76561198090128310", //ForFkSake
					"76561198115442699", //ItsRafi
					"76561198107430506", //faded
					"76561198045163743", //little tawd
					"76561198053191860", //Satpayev
					"76561198094519741", //DjangoFreeman
					"76561198123411634", //Joseph Vultaggio
					"76561198047199328", //Zeds dead baby
					"76561198022516829", //Abu Jasem
					"76561198074236542", //Walker
					"76561198086547444", //FriarTuck
					"76561198162164745", //CHRONICxKNIGHT
					"76561198062792993", //Pat-tar
					"76561198155295570", //deancooper
					"76561198056676644", //hellman4
					"76561198114788756", //Fluskies
					"76561198267388254", // "76561198121446470", //SIR
					"76561198152442647", //IIBARRICADEII
					"76561198147080989", //travis00
					"76561198055871342", //Sgt Brown
					"76561198057784032", //Hodor
					"76561198135298995", //Muhammad Ahmed
					"76561198055608411", //Nova
					"76561198083884755", //Nick
					"76561198093915329", //Niko
					"76561198069165434", //Tengum Val Gold
					"76561198077959418", //dylanlind
					"76561198089530624", //Dan
					"76561198079616759", //Jordan Delonge
					"76561198077891995", //Sniper Fi
					"76561198092203299", //ReaperTurtleJ
					"76561198115897849", //Devinator13
					"76561198150547076", //D4N
					"76561198097364044", //Sheriff Mccgringleberry
					"76561198069463118", //Micha001
					"76561198080659117", //KrissKross
					"76561198117227598", //Larry
					"76561198062300840", //Jacob1
					"76561198045776002", //Sea Soul
					"76561198128197416", //Sun Enjin
					"76561198075310773", //SnipeyJones Enjin
					"76561198170609449", //Ryguy6006 / Ryan
					"76561198006670783", //Tony Molnar / Bruin
					"76561198059290772", //Mexistache
					"76561198095689472", //kyle mendes achmed
					"76561198042587584", //Chives Enjin
					"76561198088178208", //Cooleo579 enjin
					"76561198128628252", //Wolf Riedel
					"76561198061794142", //Krang Enjin
					"76561198145572160", //Cameron Enjin
					"76561198069216575", //Exodus
					"76561198083260170", //[SS]Axel Foley
					"76561198133611332", //Emilio
					"76561198076366678", //Clamton
					"76561198137727916", //Caden
					"76561198157763939", //Inf4mousEnergy
					"76561198059193897", //Justin Blake
					"76561198082805000", //Russian Bear
					"76561198110469807", //Mason Fox
					"76561198094767351", //silverwolf
					"76561198048151196", //MrHands Enjin
					"76561198085176214", //Mr Wok
					"76561198095037617", //Goldenpotaters
					"76561198058838936", //M. Tom
					"76561198087605602", //Jarmin1 Enjin
					"76561198176437922", //Zerum
					"76561198047395579", //GrandBrutus
					"76561198056681023", //Kim Jong Fun
					"76561198103955155", //Just A Gamer
					"76561198069144395", //Skybomb
					"76561198089026304", //iMagiik Joe Day
					"76561198080647285", //InsectorTec Enjin Jordan
					"76561198019776493", //Nanderson Enjin
					"76561198119484473", //mhampton
					"76561198080082141", //InfectiousGamer
					"76561198096706367", //[LULZ] Sean
					"76561198075911086", //Spencer Anderson
					"76561198086218896", //Hugo Strom
					"76561198103742000", //SFGSpartan Enjin Kim Amaz
					"76561198090890061", //marek
					"76561198042098526", //Jaloko
					"76561198089751040", //Javilenier
					"76561198055459939", //cfm200 enjin
					"76561198150121484", //Tatiana
					"76561198162653207", //The Sober Dan
					"76561198052990382", //Rolando
					"76561198104647520", //AL3RT
					//"76561198119668286", //Veryhappy
					"76561198135788672", //Harees a laykum
					"76561198074002335", //Graham Enjin
					"76561198051253668", //Gus/Leah
					"76561198035282340", //Kwazine
					"76561198103676252", //Skull/Stylez Enjin
					"76561197996504082", //ogkurx Enjin
					"76561198089750220", //Pimp Daddy Craig
					"76561198016952089", //Cameron
					"76561198160921083", //Pasty Honeybuns
					"76561197995648724", //The Lobster
					"76561198109336126", //MaTT Sal Miller
					"76561198052597334", //Shae
					"76561198019309596", //Amazing Grapes
					"76561198040256218", //Tysm Cindy
					"76561198066186870", //Chris Babb ItsMudda
					"76561198180140043", //FalklanderJames
					"76561198058705691", //MrDiddlez
					"76561198092131123", //JacksonS
					"76561198035501607", //bagabuga / Dylan
					"76561198065161712", //Strideynet
					"76561198031702276", //xStrike
					"76561198021266045", //theonematrix9
					"76561197977670019", //Abdul-Kadir Raheem
					"76561198149329820", //Austin Enjin iP
					"76561198084399722", //RollTight
					"76561198071819286", //Cactus Eater
					"76561198056568789", //Hennim
					"76561197996888873", //Tritten
					"76561198137774797", //Captain Crunches
					"76561198088938367", //DeltaFire
					"76561198093358722", //Giovanni Enjin
					"76561198094022998", //xxthugkiller
					"76561198058867346", //cornholio Enjin
					"76561198046739351", //savage enjin
					"76561198185151139", //Jasmer 10M
					"76561198015234133", //rjestings
					"76561198056613268", //TylerHansen
					"76561198055195826", //A-JAY
					"76561198056818686", //Leothaid
					"76561198132550385", //Spandexlizard77
					"76561198085392030", //Dani Enjin
					"76561198112314720", //gdies
					"76561198185294739", //Awmaster2015
					"76561198088068336", //DrSpreadEm
					"76561198144636471", //Sw!tch
					"76561198066340114", //DeadMenRacing
					"76561198091817032", //Corey
					"76561198067490194", //Anx
					"76561198013194936", //On3eyedm3dic
					"76561198089464980", //Ctripp
					"76561198079433421", //BuzzardBat
					"76561198133995263", //Sgt Sanborne
					"76561198108769496", //Dsmashicus
					"76561198144339535", //John5
					"76561198142832749", //SMA. N. Conforti
					"76561198047739809", //Dieter
					"76561198157505040",  //StarBoSs
					"76561198130599452", //Ashton
					"76561198096310527", //larsp_000
					"76561198132937105", //Cas
					"76561198112625726", //Lucas
					"76561198075570847", //KenP
					"76561198129817887", //Rhys
					"76561198083392018", //jpf
					"76561198044511240"  //Comrade
		    ];

// Remember the Array format! No comma on last item in array!

supporters2 	  = [
					"76561198124725504", //KillaCali3
					"76561198062863149",//Spencer (donated by wade)
					"76561198054194000", //S. Wade //add as mod
					"76561198064255265",//DaveHoboMofo
					"76561198086016923", //BaconWarrior
					"76561198075424014", //LeHazy
					"76561198045152287", //[DNICE] Yousef Wendy
					"76561198049714505", //Laptopwarrior/GriswoldLog
					"76561198107780908", //Chris/Psycho
					"76561198011846083", //TheArtOfBalance
					"76561198077387199", //Billyjeanismydad
					"76561198003510822", //ShangorPanetta
					"76561197978480837", //knarf84
					"76561198143315314", //Token
					"76561197993946192", //danile666
					"76561197974886424", //Kuro5hin420
					"76561198119475641", //Le Fother
					"76561198145327197", //Alpha2O
					"76561198105395558", //Collin
					"76561198059792896", //Ben brenn
					"76561198091781267", //PotatoPalsAlec
					"76561198155990670", //Littlepip
					"76561198151598894", //Allyson
					"76561197983640194", //Timothy
					"76561197971835255", //Johan
					"76561198013397706", //Geebly
					"76561198042877676", //Bananainyourear
					"76561198061766345", //PotSmokingHippie
					"76561198022259983", //LPK Solitude
					"76561197985471552", //Bismarck
					"76561198069889962", //oshit
					"76561198058459273", //Bashir Zayz
					"76561198153831221", //rhotis
					"76561198148463580", //dillan225
					"76561198195833822", //CandyMan changed from 76561198166236290
					"76561198063890424", //Brendan Donahue
					"76561198139855195", //Murphy
					"76561198006806376", //TonyMontana
					"76561198137657512", //Pak X Ehm
					"76561198153442863", //Hudson Riggs
					"76561198026872762", //Danny
					"76561198080526121", //ExoticAnus
					"76561198132886280", //Ice Mummy
					"76561198083087001", //DizzyOreo
					"76561198050430232", //HardLike
					"76561198102125657", //Edward UnknowingFrk Martinz
					"76561198132242997", //MPxLuna possible scammer
					"76561198065361202", //LifeShifter
					"76561198096275577", //Henry Hill Liz Beckett
					"76561198112412098", //Sgt Dragon
					"76561197974500553", //HarvisTraley
					"76561198059732869", //Pvt. Reggie
					"76561198122297063", //Dowables
					"76561198069677444", //Jawn
					"76561198097070500", //Mythic
					"76561198080009724", //Bonenberger13
					"76561198083602285", //Pimp God Tyrone
					"76561198090767260", //Zaar Enjin
					"76561198093686268", //James Washcloth
					"76561198102207968", //Abel Ortega
					"76561198001534106", //Beau
					"76561198146770526", //Agent Gaming
					"76561198077835165", //CanMan 179
					"76561198039594808", //Emanuel
					"76561198168912341", //Kiwiwonder
					"76561198067610239", //Imran Zakhaev
					"76561198018600234", //JORDAN Beck
					"76561198133152953", //Lemmings
					"76561198055310671", //Elgin Terry
					"76561198122666011", //cyka blyat
					"76561197990568150", //Grismer
					"76561198083701025", //knight
					"76561198143189534", //SHERMAN Isaiah Calhoun
					"76561198042099228", //Curtis London
					"76561198065859672", //Alvino
					"76561198152562567", // XxNickxX
					"76561198043117324", //GARRETT_
					"76561198064657725", //Scrowell
					"76561198090140009", //LimpyLongLeg
					"76561198068873234", //WannaBeRanger Enjin
					"76561198079511236", //Frankie Enjin
					"76561197996312393", //scylendrey Enjin Righteous Light
					"76561198008415781", //Comet
					"76561198055769028", //Chandler West
					"76561197980953981", //pacifiststart
					"76561198079637409", //Skater Zackk
					"76561198110016140", //DarksunVG
					"76561198093467203", //Cheddar Enjin
					"76561198028005476", //MichaelS
					"76561198087841197", //Cameron12321
					"76561198067206897", //=DGR= Voxx
					"76561198088370787", //Anon
					"76561198057705410", //Dahking21
					"76561198084659010", //ScumbagSteve
					"76561198061672377", //[SS]Death Rider
					"76561198079239278", //jjdenver enjin
					"76561198158964404", //+SP+ Brandon
					"76561198175655545", // Baldev Jhand
					"76561198007027642", //EvanZ
					"76561198048867679", //Fabian
					"76561198039324029", //fritzshadow
					"76561198012920317", //Drew
					"76561198033246422", //Panties
					"76561198140460092", //Poker101
					"76561198069399525", //korsic7/bror
					"76561198131210419", //Overlord Enjin
					"76561198064531067", //lulzfunny
					"76561198184870159", //SGT. McCracken
					"76561198071162289", //Sgt Turtles Keegan
					"76561198011207224", //Daniel Lopez (6sic6)
					"76561198057153486", //Al-Qassam
					"76561198119668286", //Zander
					"76561198115037623", //SuplexCity
					"76561198030700685", //Du Tian yugboi
					"76561198041348690", //BLUEBIRD
					"76561198112644171", //Tanner
					"76561198154878210", //Anarch xhellraiserx
					"76561198158338253", //DiabloR1
					"76561198116512003", //Pythonix
					"76561198068395350", //ThatFordGuy
					"76561198083905699", //Luke Kruger/Fallen Russian
					"76561198159209074", //Deutsch Flieger
					"76561198011333652", //DirtyXDavis
					"76561198117612647", //Patrick Dyke
					"76561198161493575", // Ivan
					"76561198114549420", //RageCometz
					"76561198137071745", //OpejolkinGaming
					"76561198137131240", //CreepyIcecream
					"76561198043592153", //4ChanParyVan
					"76561198132842532"  //MGM
			];

// Remember the Array format! No comma on last item in array!

supporters3  	  = [
				"76561198087246280", //Steve briton
				"76561198056520395", //TMJ0523
				"76561198059512364", //ethan smith(nice guy)
				"76561198085473116", //CPT. RUSSELL
				"76561198071466491", //|KINGZ|MAC
				"76561198078405272",  //Henrik
				"76561198062759694", //MaikelHawk
				"76561198015154477", //leadmagnet
				"76561197983195053", //Eric
				"76561197970974783", //Zanec321
				"76561198071964800", //GavinTankGaming
				"76561198158227283", //Gnome
				"76561198103350780", //Ryguy
				"76561198146926838", //Wakeup
				"76561198211924507", //Mr. Penguin
				"76561198019703127", //walker
				"76561198071078533", //Lucid Hysteria
				"76561198087009530", //Leiwyn
				"76561198021622967", //Trooper1030
				"76561198081149300", //blazn
				"76561198091256187", //Robb Stark
				"76561198135614824", //Weeaboo effecting team
				"76561198048711651", //Jamie Ranger
				"76561198085630212", //TMC Barkuz
				"76561198007560382", //Zraka upped
				"76561198040908402", //MattMax509
				"76561198035613411", //The Meat Cleaver
				"76561198015531909", //Paltala
				"76561198092417819", //Scorches
				"76561198035381118", //Bermis Wukun
				"76561198059086202", //Christian 1899march
				"76561198058608269", //Prattville
				"76561198079959469", //Rommel
				"76561198179760007", //Scrotty/Smokey Enjin
				"76561197984064803", //BeardedDeath Tim gib
				"76561198098170503", //King Akbur
				"76561198102000968", //RealHippie
				"76561198105821449", //Derpy Herpy derpderp
				"76561198093692248", //Oooohkillem
				"76561198114907761"  //Red-X Hunterizer
			];

// Remember the Array format! No comma on last item in array!

supporters4  	  = [
				"76561198111424831", //TiLTDRAMZ
				"76561197967346144", //[DC]Barkuticus
				"76561198201488867"  //Burty

];

// Remember the Array format! No comma on last item in array!

supportersVIP     = [
				"245049094", // Fyodor
				"76561198106962111", // Wilson (Vukan)
				"76561198018896118", // 72nd Talfi/Willigsire
				"76561198132366940", // LIL PWMZORER
				"76561198068079024", //SolidSnake
				"76561198131604780", //GREASY
				"76561198046673227", //SAM1
				"76561198072033337", //Jarhead
				//"76561198132242997", //MPxLuna
				"76561198154237291", //Sgt. E Garcia
				"76561198045285643", //EdwardThronedBoar
				"76561197969949094", //Mmetully
				"76561198056078549", //SAM ITALY $15 $50 $75
				"76561198079002512", //Reckerog
				"76561198080206289", //Cole
				"76561198055764826", //weston5430
				"76561198081926401", //UKKarma
				"76561198000426604", //Boozehammer John Biden
				"76561198132373007", //FBI
				"76561198141964948", //Dreams zach
				"76561198152269779", //Turtle-_-Island
				"76561198093831210", //Turtles
				"76561198005220301", //XxUnturendMasterxX
				"76561198093287676", //Joshua Jay
				"76561198087624037", //Helix
				"76561198078305491", //William
				"76561198135899866", //bakedpotato
				"76561198143786261", //Rivers
				"76561198153761197", //FalconLover
				"76561198114718805", //Nosce
				"76561198054899491", //Progaming/CyanCod_Player
				"76561198053580599", //MartinAleksander
				"76561198074036407", //Mr.Dexter Santiago
				"76561198030119519", //Diarmada
				"76561198155614911", //Alex Mason
				"76561198139401322", //Mu'tasim Asadullah
				"76561198118377646", //ShawnMoody
				"76561198021990722", //Mushroombat
				"76561198101924418", //Lex_Dev
				"76561198162808465", //Visual Enjin
				"76561198141620815", //Uncle Bubs
				"76561198114597817", //Mr. Baggles Enjin
				"76561198068098093", //Explosiveman Enjin
				"76561198062448514", //Abu Nazzir (Sion)
				"76561198136436202", //Dark Veteran
				"76561198106146295", //XxThatWhitexX
				"76561198146759961", //Connor
				"76561198074752188", //Muzammil Zaffar Mujahid
				"76561198085563991", //Masuk Hussein Crow
				"76561198017822314", //Morvistic
				"76561198047477296", //Jamal Nippleham
				"76561198165712571", //MSGT-sniper-is-back
				"76561197973705584", //dookiepower enjin
				"76561198020927252", //BOGAR THE VIKING
				"76561197960630871", //Kamak
				"76561198005061273", //ComradeTWS Enjin
				"76561198010528925", //Sw33tz
				"76561198130797899", //Nick Norman
				"76561198108066775", //Rivalhelicopter
				"76561198101499715", //Rexspd20
				"76561198133658655", //Roque
				"76561198063832142", //DrinkyCrow
				"76561198127065101", //=WoA=BlackHawk
				"76561198035305504", //n.shoupp
				"76561198134427407", //Ja
				"76561198094294502", //Unkown /gregorys
				"76561198100072934", //NESKOVICH
				"76561198079217419", //JohnBallsac
				"76561198089667130", //Facundo
				"76561198101119702", //Tyler MegaquartzMC
				"76561198271741218", //God
				"76561198067620373", //Robert
				"76561198177166307", //Dark Arrow/kailil0285@gmail.com
				"76561198142704814", //VoidShotzz
				"76561198124176578", //Lt Monkey
				"76561198119216004", //Heaven
				"76561198134796571", //Canadian Bacon T2
				"76561198050730382", //Austin Jumper
				"76561198134919635", //Lordwookie
				"76561198041119029", //Sgt. Ryan
				"76561198089072949"  //KAAAAAAYLE

			];
