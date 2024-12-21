import SwiftUI

struct detailView: View {
    
    @Binding var listaBottone: [Bottone]
    var id: Int
    //    @State var bot:Bottone
    
    var body: some View {
        ScrollView{
            VStack{
                Text("\(listaBottone[id].titoloBottone)")
                    .font(.title)
                
                    .padding ([.top, .bottom], 20)
                
                Image("\(listaBottone[id].fotoBottone)")
                    .resizable()
                    .frame(width:300,height: 150)
                
                Text("\(listaBottone[id].descrizione)")
                    .padding(20)
                
                
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "mail.stack")
                            .foregroundColor(.blue)
                        
                        Link(destination: URL(string: "mailto:"+listaBottone[id].mail)!,
                             label:{
                            Text(listaBottone[id].mail)
                                .underline()
                        })
                        
                    }
                    
                    .padding ([.top, .bottom], 5)
                    
                    HStack{
                        Image(systemName: "globe")
                            .foregroundColor(.blue)
                        
                        
                        
                        Link(destination: URL(string: "https://"+listaBottone[id].sito)!,
                             label:{
                            Text(listaBottone[id].sito)
                                .underline()
                        })
                    }
                    .padding ([.top, .bottom], 5)
                    
                    HStack{
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                        
                        Link(destination: URL(string: "tel:"+listaBottone[id].telefono)!,
                             label:{
                            Text(listaBottone[id].telefono)
                                .underline()
                        })
                        
                        
                        
                        // Text(listaBottone[id].telefono)
                        // .underline()
                        
                    }
                    .padding ([.top, .bottom], 5)
                }
            }
            Spacer()
                .toolbar {
                    FavouritesButton(listaBottone: $listaBottone, id: listaBottone[id].id)
                }
                .navigationTitle("\(listaBottone[id].sottotitoloBottone)")
        }
    }
}
var B1 = Bottone(titoloBottone: "titolo", sottotitoloBottone: "sottotitolo", fotoBottone: "foto", descrizione: "descrizione", telefono: "telefono", sito: "www", mail: "wewe", isPref: false, categoria: "bott")

struct detailView_Previews: PreviewProvider {
    static var previews: some View {
        detailView(listaBottone: .constant([Bottone(id:0, titoloBottone:"Anti-war Gathering", sottotitoloBottone: "25/10/2022", fotoBottone: "Evento1", descrizione: "descrizione", telefono: "telefono", sito:"sito", mail:"mail", isPref: false, categoria: "evento")]), id: 0)
    }
}

