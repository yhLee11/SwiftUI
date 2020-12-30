import SwiftUI

struct Intro: View {
    var body: some View {
    
        NavigationView{
            NavigationLink(destination:LoginMain()){
                Image("pintween")
                    .renderingMode(.original)
                }.offset(y:-60)
        }
    }
}

struct Intro_Previews: PreviewProvider {
    static var previews: some View {
        Intro()
    }
}
