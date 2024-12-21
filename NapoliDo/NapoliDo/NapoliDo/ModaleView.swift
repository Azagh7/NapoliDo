import SwiftUI

struct ModaleView: View {
    
    @State var Budget: Double = 0
    @State var km: Double = 0
    @State private var date = Date()
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        VStack {
            NavigationStack {
                
                Text("Filter by")
                    .font(.title)
                    .bold()
                    .padding()
                
                Text("Budget")
                    .font(.headline)
                HStack {Image(systemName: "dollarsign")
                        .resizable()
                        .frame(width: 20, height: 30)
                        .foregroundColor(.blue)
                    Slider(value: $Budget, in: 0...500)
                    Text("\(String(format: "%.2f", Budget))")
                    
                    Image(systemName: "dollarsign")
                            .resizable()
                            .frame(width: 10, height: 15)
                }
                .padding()
                
                Text("How far?")
                    .font(.headline)
                HStack {Image(systemName: "mappin")
                        .resizable()
                        .frame(width: 10, height: 30)
                        .foregroundColor(.blue)
                    
                    Slider(value: $km, in: 0...50)
                    Text("\(String(format: "%.2f", km))")
                    
                    Text("km")
                       
                    
                    
                }
                
                    
                .padding()
               
                DatePicker(
                    "Start Date",
                    selection: $date,
                    displayedComponents: [.date]
                )
                
                .datePickerStyle(.graphical)
                .padding()
                
                Button("Search") {}
                
                Spacer()
                
                    .toolbar{
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {Image(systemName: "xmark")
                            
                        }
                    }
            }
            .padding()
        }
        
    }
    
    struct ModaleView_Previews: PreviewProvider {
        static var previews: some View {
            ModaleView()
        }
    }
}
