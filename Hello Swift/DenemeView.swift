import SwiftUI

struct DenemeView: View {
    @State private var text = ""
    
    func greet() {
        print("hello world")
    }
    
    fileprivate func shaddowText(text: String) -> some View {
        return Text(text)
            .padding(25)
            .background(RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .shadow(color: Color.black.opacity(0.4), radius: 4, x:0 , y: 6)
            )
    }
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Hello Swift!")
                .bold()
            
            Button(action: {
                greet()
            }) {
                Text("click me")
                    .bold()
                    .frame(maxWidth: .infinity) // Sadece genişliği sınırlar
                    .padding() // İçerik çevresine boşluk ekler
                Text("second child".uppercased())
                    .bold()
                    .padding(.trailing,20)
            }
            .frame(height: 75) // Butonun yüksekliğini belirler
            .background(Color.red)
            .foregroundColor(.white) // Buton metninin rengini beyaz yapar
            .cornerRadius(10) // Butonun köşelerini yuvarlar
            .padding(.top, 50) // Butonun üst kısmına boşluk ekler
            
            AsyncImage(url: URL(string: "https://steamuserimages-a.akamaihd.net/ugc/950724071161827431/F25162134F70D92EAB1D8965654EBA8E2DC470F9/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true"))
            {
                image in image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            }
        placeholder: {
            ProgressView()
        }
            
        .frame(width: 200, height: 200, alignment: .center)
        .background(Color.red)
        .clipped()
        .cornerRadius(20)
            
            TextField("pleaceholder", text: $text)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

         Text("Yuour input is: \(text)")
            
            ZStack(alignment: .center) {
                LinearGradient( gradient: Gradient(colors: [Color.blue,Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                Text("Hello SwiftUI!")
                    .bold()
                    .foregroundColor(Color.white)
                    .position(x: 10, y: 20)
                Text("Hello ZStack!")
                    
            }.frame(width: 250, height: 150, alignment: .center)
                .background(Color.blue)
                .clipped()
                .cornerRadius(20)
            
            Spacer().frame(height: 30)
            
            
            HStack {
                shaddowText(text: "Shaddow Text")
                shaddowText(text: "Winter is Coming")

            }
            
        }
        .padding()
    }
}

struct DenemeView_Previews: PreviewProvider {
    static var previews: some View {
        DenemeView()
    }
}
