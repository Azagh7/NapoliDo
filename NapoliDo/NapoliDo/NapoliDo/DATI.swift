import Foundation

struct Bottone: Identifiable, Codable{
    var id: Int = 999
    var titoloBottone:String
    var sottotitoloBottone:String
    var fotoBottone:String
    var descrizione:String
    var telefono:String
    var sito:String
    var mail:String
    var isPref:Bool
    var categoria:String
}



func readList()->[Bottone]{
    do {
        let jsonData = UserDefaults.standard.data(forKey: "listaBottone")
        if jsonData != nil {
            let list = try JSONDecoder().decode([Bottone].self, from:jsonData!)
            return list
        } else {
            return bottoniIniziali
        }
    } catch {
        print(error)
    }
    return bottoniIniziali
}

func saveList(listaBottone: [Bottone]){
    do {
        let data = try JSONEncoder().encode(listaBottone)
        UserDefaults.standard.set(data, forKey: "listaBottone")
    } catch {
        print(error)
    }
}


var bottoniIniziali : [Bottone] = [
        
    Bottone(id:0, titoloBottone:"Etnic Music Festival", sottotitoloBottone: "25 Ottobre 2022", fotoBottone: "Evento1", descrizione: "Ethnos, the great festival of ethnic music that has been held since 1995 in the Vesuvian area and which has become one of the largest ethnic music festivals in Italy, is restarting. The XXVII edition of Ethnos will be held this year from 9 September to 3 November 2022, in 5 municipalities on the Vesuvian coast. Many great international artists in Ethnos among the beautiful villas of the Golden Mile, presenting many great artists. The prices include a convenient subscription to 10 shows at about 55 euros or a cost that varies between 5 and 11 euros per single show, plus presale", telefono: "0818235416", sito:"www.comune.napoli.it", mail:"emfestival@gmail.com", isPref: false, categoria: "evento"),
    Bottone(id:1, titoloBottone:"Intercultural Urban Routes", sottotitoloBottone: "2 Novembre 2022", fotoBottone: "Evento2", descrizione: "Guided tours return to Naples to discover the city together with intercultural guides of foreign origins.Many itineraries of Migrantour Napoli that reveal the squares, streets and alleys of the city that contain citizens of foreign origins' stories, which are now fully integrated into our society.The intercultural walks of Migratour Napoli are organized and managed by foreign citizens.", telefono: "3346049916", sito:"www.facebook.com", mail:"migrantournapoli@coopcasba.org", isPref: false, categoria: "evento"),
    Bottone(id:2, titoloBottone:"Colso di chilulgia per xiaoling", sottotitoloBottone: "12 Novembre 2022", fotoBottone: "Evento3", descrizione: "Il panda gigante o panda maggiore (Ailuropoda melanoleuca David, 1869) è un mammifero appartenente alla famiglia degli orsi. Originario della Cina centrale, vive nelle regioni montuose del Sichuan; è divenuto, verso la seconda metà del XX secolo, un emblema nazionale cinese, dal 1982 raffigurato sulle monete auree cinesi (serie Panda Dorato), oltre che simbolo del WWF", telefono: "3270127686", sito:"www.google.org", mail:"giekician@wataaa.com", isPref: false, categoria: "evento"),
    Bottone(id:3, titoloBottone:"Migrantour, Sri Lankan Cuisine", sottotitoloBottone: "15 Novembre 2022", fotoBottone: "Evento4", descrizione: "The Ukrainian Orthodox Church of St. Nicholas, the Church of Santa Maria dei Vergini, the Palazzo dello Spagnuolo, food from Eastern Europe, Indian take-aways. A journey through the Neapolitan heritage and the religious, cultural and culinary traditions of the Ukrainian, Sri Lankan and Indian people and communities who live in this portion of the city, without forgetting the welcome and inclusion activities.", telefono: "3346049916", sito:"www.casbaoperativasociale.org", mail:"migrantour@gmail.com", isPref: false, categoria: "evento"),
    
    
    Bottone(id:4, titoloBottone:"David Bowie Exhibition", sottotitoloBottone: "15 Ott - 30 Nov 2022", fotoBottone: "Cultura1", descrizione: "Appointment set for September 24, 2022 at the Palazzo delle Arti in Naples for the first of the major exhibitions in the city: David Bowie The passenger by Andrew Kant. Available until January 29, 2023.", telefono: "0818764372", sito:"www.pan.it", mail:"napolipan@gmail.com", isPref: false, categoria: "cultura"),
    Bottone(id:5, titoloBottone:"FAI days Fall Edition 2022", sottotitoloBottone: "15 Ott - 30 Nov 2022", fotoBottone: "Cultura2", descrizione: "The program of the eleventh edition will be very rich and will include incredible paths that intertwine history, art and nature. It will be an opportunity for all citizens and guests to get to know many places that are usually inaccessible or otherwise little known, such as historic buildings, historic complexes, small villages, archaeological areas of great interest, museums and much more.", telefono: "0817703030", sito:"www.fondoambiente.it", mail:"infoFai@gmail.com", isPref: false, categoria: "cultura"),
    Bottone(id:6, titoloBottone:"Free Entrance to Museo Madre", sottotitoloBottone: "16-17 Ottobre 2022", fotoBottone: "Cultura3", descrizione: "Located in the historic heart of Naples, a few steps from the Duomo, with its 7200 square meters dedicated to collections and temporary exhibitions, the Madre is today one of the most important contemporary art museums in Italy.From Wednesday 16 October until the inauguration of the new exhibitions, the Madre museum offers free admission to all visitors, to make them more and more involved in their experiences, to deepen their knowledge of their collections in progress and to facilitate participation in the activities planned in the spaces of the Mother Re_PUBBLICA", telefono: "0819528498", sito:"www.madrenapoli.it", mail:"info@madrenapoli.it", isPref: false, categoria: "cultura"),
    Bottone(id:7, titoloBottone:"Incontri di archeologia al MANN", sottotitoloBottone: "27 Ottobre 2022", fotoBottone: "Cultura4", descrizione: "Created by Charles of Bourbon in 1734 to promote the exploration of the Vesuvian cities buried by the eruption of 79 AD., the museum became national in 1860, with increasingly richer collections from all over Campania, southern Italy and privates.", telefono: "0814422111", sito:"www.google.it", mail:"man-na@cultura.gov.i", isPref: false, categoria: "cultura"),
    
    
    Bottone(id:8, titoloBottone:"Sport popolare all'ExOPG", sottotitoloBottone: "In corso", fotoBottone: "Sport1", descrizione: "A sport for the people: it is free, it can be practiced by everyone - without exception or distinction -, which responds to the primary needs of health, psychophysical well-being, sociability and entertainment. Without these things, in our opinion, one does not live, or one does not live well.The former OPG offers various courses and a well-equipped gym. Consult the site to discover them all!", telefono: "0815247864", sito:"www.jesopazzo.it", mail:"jesopazz@gmail.com", isPref: false, categoria: "sport"),
    Bottone(id:9, titoloBottone:"MiSport: Migrants inclusion", sottotitoloBottone: "19 Ottobre 2022", fotoBottone: "Sport2", descrizione: "The main goal of the club's development project is to be consecrated as the second team of the City of Naples. Napoli United will be an alternative, not only  as a sport club, but also cultural one to the world of football, where educational, social and ethical values are placed in the background. Behind the sporting project there are ten years of experience and of team working that have produced several satisfying results. That is why, this was the top 5 teams in the Campania Excellence championship for two years.For further information: Via Giovanni Porzio, 4 CDN 80143 Napoli ", telefono: "3384312196", sito:"https://m.facebook.com/NapoliUnited", mail:"info@napoliunited.com", isPref: false, categoria: "sport"),
    Bottone(id:10, titoloBottone:"Torneo di calcio presso lo Scugnizzo Liberato", sottotitoloBottone: "20 Ottobre 2022", fotoBottone: "Sport3", descrizione: "Also this year the Scugnizzo Liberato will host the Scugnizzo Cup for the second edition of the five-a-side football tournament of the districts of Naples.Scugnizzo has decided to welcome and make ours the request expressed by many young people from the neighborhood and continue to invest in a path that has seen us encounter some difficulties at its debut, but in which we have seen concrete possibilities for growth and development, in the popular sign of the values we believe that football must be brought to grow.", telefono: "3457683294", sito:"www.scugnizzoliberato.org", mail:"scugnizzocup@gmail.com", isPref: false, categoria: "sport"),
    Bottone(id:11, titoloBottone:"Torneo ATP di tennis presso Lungomare Caracciolo", sottotitoloBottone: "21 Ottobre 2022", fotoBottone: "Sport4", descrizione: "Great tennis arrives in Naples: the competitions for the Tennis Napoli Cup, ATP 250 tournament will begin with many great stars of world tennis.The event will start from Tuesday 18 to Friday 21 and will  keep the two game sessions: the daytime from 11.00, the evening from 19.00. Semifinals on Saturday 22nd at 11.30am, final on Sunday 23rd no earlier than 2.00pm.There will also be the Kids Village with two fields dedicated to tennis activities. Prices vary from 15 to 65 euros depending on the places and the day of the meetings.", telefono: "0818321287", sito:"www.tennisclubnapoli.it/", mail:"tennisnapolicup@gmail.com", isPref: false, categoria: "sport"),
    
    
    Bottone(id:12,titoloBottone:"Tandem language exchange", sottotitoloBottone: "20 Ottobre 2022", fotoBottone: "Corsi1", descrizione: "The Aperilingua is held bimonthly on Thursdays at the “Enne” cocktail bar in Via Bellini 43, Naples (NA). It promotes social aggregation and linguistic exchange by using interactive games. Share your knowledge and have fun!", telefono: "347653844", sito:"www.tandemlinguisticonapoli.it", mail:"aperilingua@gmail.com", isPref: false, categoria: "corso"),
    Bottone(id:13,titoloBottone:"Free informatics course by C.D.B. School", sottotitoloBottone: "29 Ottobre 2022", fotoBottone: "Corsi2", descrizione: "The CDP School is an entity accredited by the Campania Region specialized in the following areas:- Informatics (Computer Operator, Programmer and Data Processing, Web Master, CAD Operator, Computer Graphics, Hardware Repair Technician ..) - Social Welfare (Social-Welfare Worker, Child Care Worker, Family Mediator ..); - New Professions (Energy Saving System Installation Officer, Separate Collection Officer, Condominium Management Officer, Quality Control Officer)The courses take place in  Piazza Risorgimento n. 12, Frattamaggiore (NA).", telefono: "0813485761", sito:"www.corsoinformatico.it", mail:"cdpschool@tin.it", isPref: false, categoria: "corso"),
    Bottone(id:14,titoloBottone:"Italian language course", sottotitoloBottone: "04 Novembre 2022", fotoBottone: "Corsi3", descrizione: "The courses will start in the second half of October 2022, will be held online, three times a week in the afternoon (two-hour lessons). Enrolled students who have taken the level test will receive an e-mail from CLAOR with all the information about the start dates of the courses. The courses are divided into several levels, corresponding to the parameters set by the Common European Framework of Reference: Beginner - A1 Elementary - A2 Pre-intermediate - B1 Intermediate - B2 Advanced 1 - C1.1 Advanced 2 - C1.2 Each course includes: 60 hours of lessons and 20 hours of guided self-study", telefono: "0810734267", sito:"www.unior.it", mail:"corsiclaor@gmail.com", isPref: false, categoria: "corso"),
    Bottone(id:15,titoloBottone:"Diventa un vero Aquilotto di Mezzocannone", sottotitoloBottone: "31 Febbraio 2023", fotoBottone: "Corsi4", descrizione: "Entra a far parte del miglior gruppo di Coders dell'Apple Foundation Program, edizione X. Imparerai ad utilizzare il Json e altre importanti features. Scopriamo insieme il più grande segreto tra mari e Monti per arrivare alla risposta che hai sempre cercato. Ti aspecto!", telefono: "0817654321", sito:"www.aquilotti.com", mail:"aquilotti.cannone@gmail.com", isPref: false, categoria: "corso")
    
]


var bottone : Bottone = Bottone(titoloBottone: "titolo", sottotitoloBottone: "sottotitolo", fotoBottone: "foto1", descrizione: "descrizione", telefono: "333333333333", sito: "www.mipiacitu.it", mail: "mail@gmail.com", isPref: false, categoria: "categoria")

