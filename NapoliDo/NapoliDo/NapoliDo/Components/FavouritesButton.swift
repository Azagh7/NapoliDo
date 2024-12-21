import SwiftUI

struct FavouritesButton: View {
   
    @Binding var listaBottone: [Bottone]
    var id: Int
    var body: some View {
               Button {
                   listaBottone[id].isPref.toggle()
                   saveList(listaBottone: listaBottone)
               } label: {
                   Image(systemName: listaBottone[id].isPref ? "star.fill" : "star")
                       .foregroundColor(listaBottone[id].isPref ? .yellow : .black)
                       .font(.system(size: 20))
                   //Text(String(bottone.id))
               }
       }
}

struct FavouritesButton_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesButton(listaBottone: .constant([Bottone(id:0, titoloBottone:"Anti-war Gathering", sottotitoloBottone: "25/10/2022", fotoBottone: "Evento1", descrizione: "descrizione", telefono: "telefono", sito:"sito", mail:"mail", isPref: false, categoria: "evento")]), id: 0)
    }
}
