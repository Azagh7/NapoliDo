import SwiftUI

struct FavoritesView: View {
    
    @State private var favorite = "evento"
    // @Binding var tapIndex: Bool
    @Binding var listaBottone: [Bottone]
    var body: some View {
        VStack {
            
            HStack { Text("Favorites")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 20)
                
            }
            
            Picker("Favorites", selection: $favorite) {
                Text("Events").tag("evento")
                Text("Culture").tag("cultura")
                Text("Sport").tag("sport")
                Text("Courses").tag("corso")
            }
            .pickerStyle(.segmented)
            List {
                ForEach(listaBottone.filter({ x in
                    x.categoria == favorite && x.isPref == true })) { bottone in
                        NavigationLink{
                            detailView(listaBottone: $listaBottone, id: bottone.id)
                        } label: {
                            
                            HStack{
                                Image(bottone.fotoBottone)
                                    .resizable()
                                    .frame(width:60,height: 40)
                                
                                VStack{
                                    Text(bottone.titoloBottone)
                                        .font(.headline)
                                    
                                      Text(bottone.sottotitoloBottone)
                                      .fontWeight(.thin)
                                }
                            }
                            .padding()
                        }
                        
                        
                    }
                
                
                
                ForEach(listaBottone.filter({ isFavourite in
                    
                    isFavourite.isPref == true
                    
                    
                })) { btn in
                    
                    // Text("il nome è\(bottone.titoloBottone[$tapIndex])")
                    
                }
                
            }
            
            
            
            
            //    .padding(EdgeInsets(top: -30, leading: -20, bottom: -10, trailing: -20))
            //   .clipShape(Rectangle())
            
            
            Spacer()
        }
        .padding()
    }
    
    
    struct FavoritesView_Previews: PreviewProvider {
        static var previews: some View {
            FavoritesView(listaBottone: .constant([Bottone(id:0, titoloBottone:"Anti-war Gathering", sottotitoloBottone: "25/10/2022", fotoBottone: "Evento1", descrizione: "descrizione", telefono: "telefono", sito:"sito", mail:"mail", isPref: false, categoria: "evento")]))
        }
    }
}
