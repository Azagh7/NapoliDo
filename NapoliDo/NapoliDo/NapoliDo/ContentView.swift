import SwiftUI

struct ContentView: View {
    
    @State var listaBottone = readList()
    
    var body: some View {

        TabView {
            EventsView(textsearch: "", listaBottone: $listaBottone)
                .tabItem {
                    Label("Events", systemImage: "person.3.fill")
                }
            CultureView(textsearch: "", listaBottone: $listaBottone)
                .tabItem {
                    Label("Culture", systemImage: "globe.europe.africa")
                }
            SportView(textsearch: "", listaBottone: $listaBottone)
                .tabItem {
                    Label("Sport", systemImage: "sportscourt.fill")
                }
            CoursesView(textsearch: "", listaBottone: $listaBottone)
                .tabItem {
                    Label("Courses", systemImage: "book.closed.fill")
                }
            FavoritesView(listaBottone: $listaBottone)
                .tabItem {
                    Label("Favorites", systemImage: "star.fill")
                }
           }.navigationBarBackButtonHidden(true)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
