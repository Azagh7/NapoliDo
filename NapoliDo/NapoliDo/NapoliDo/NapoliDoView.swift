import SwiftUI

struct NapoliDoView: View {
    
    var body: some View {
        NavigationView{
            VStack {
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                NavigationLink(destination: {
                   ContentView()
                }) {
                    Text("Become a NapoliDoer!")
                        .font(.headline)
                }
                
                .padding()
            }
        }
    }
    
    struct NapoliDoView_Previews: PreviewProvider {
        static var previews: some View {
            NapoliDoView()
        }
    }
}
