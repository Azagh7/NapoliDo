import SwiftUI



struct EventsView: View {
    @State var textsearch: String
    @State var showModal = false
    @Binding var listaBottone: [Bottone]
    @State private var refresh = false
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(listaBottone.filter({ list in
                    list.categoria == "evento"
                })) { bottone in
                    
                    NavigationLink{
                        detailView(listaBottone: $listaBottone, id: bottone.id)
                    } label: {
                        VStack(alignment: .leading){
                            Text("\(bottone.titoloBottone)")
                                .font(.headline)
                            Text("\(bottone.sottotitoloBottone)")
                                .fontWeight(.thin)
                            Image("\(bottone.fotoBottone)")
                                .resizable()
                                .frame(width:300,height: 150)
                                .shadow(color: .black, radius: 4)
                        }
                        .frame(width: 300)
                        .overlay(alignment: .topTrailing) {FavouritesButton(listaBottone: $listaBottone, id: bottone.id)}

                    }
                    .buttonStyle(.plain)

                }.padding(.top, 20)

            }
//            .listStyle(.plain)
            .navigationTitle("Events")
            .toolbar{
                Button {showModal = true} label: {
                    Image(systemName: "line.horizontal.3.decrease")
                        .resizable()
                        .frame(width: 30, height: 20)
                }
                .sheet(isPresented: $showModal, content: {
                    ModaleView()
                })
            }
            .searchable(text:$textsearch, prompt: "Cerca")
        }
    }
    
    struct EventsView_Previews: PreviewProvider {
        static var previews: some View {
            EventsView( textsearch: "", listaBottone: .constant([Bottone(id:0, titoloBottone:"Anti-war Gathering", sottotitoloBottone: "25/10/2022", fotoBottone: "Evento1", descrizione: "descrizione", telefono: "telefono", sito:"sito", mail:"mail", isPref: false, categoria: "evento")]))
        }
    }
}
