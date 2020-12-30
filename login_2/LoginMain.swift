import SwiftUI

struct LoginMain: View {
    
    @State var isToggle : Bool = false
   //@State var delView : Bool = false
    
    var body: some View {
        ZStack{
            
            NavigationView{
                VStack{
                    LoginText()
                    UserEmail()
                    UserPwd()
                    LoginButton()
                    OrLine()
                    
                    //State, Binding
                    SignInButton()
                    //GmailSheetView(delView: $delView)
                    
                }.offset(y:-60)
            }.navigationBarTitle("")
                .navigationBarHidden(true)//네비게이션 back 버튼 없애기
            
            
        }
    }
}



struct LoginMain_Previews: PreviewProvider {
    static var previews: some View {
        LoginMain()
    }
}

struct LoginText: View {
    var body: some View {
        VStack{
            Text("Log in")
                .font(.largeTitle)
                .bold()
            Text("and discover your next adventure")
                .foregroundColor(Color.gray)
        }.padding(.bottom,50)
    }
}

struct UserEmail: View {
    @State var email: String = ""
    var body: some View {
        VStack(alignment:.leading){
            Text("이메일")
                .font(Font.system(size:15))
            TextField("이메일을 입력해 주세요",text: $email)
                .frame(width:287,height:24)
            Rectangle()
                .fill(Color.gray)
                .frame(width:287,height: 1)
        }.padding(.bottom,0)
    }
}

struct UserPwd: View {
    @State var password: String = ""
    var body: some View {
        VStack(alignment:.leading){
            Text("비밀번호")
                .font(Font.system(size:15))
            SecureField("비밀번호를 입력해 주세요",text: $password)
                .frame(width:287,height:24)
            Rectangle()
                .fill(Color.gray)
                .frame(width:287,height: 1)
        }.padding(.bottom,30)
    }
}


struct LoginButton: View {
    var body: some View {
        
        Button(action: {print("Login Button tapped")}){
            Text("로그인")
                .frame(width:287,height:48)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(5.0)
                .padding(.bottom,70)
        }.buttonStyle(PlainButtonStyle())
        
    }
}

struct OrLine: View {
    var body: some View {
        
        HStack{
            Rectangle()
                .fill(Color.gray)
                .frame(width:44,height: 1)
            Text("or")
                .foregroundColor(Color.gray)
            Rectangle()
                .fill(Color.gray)
                .frame(width:44,height: 1)
        }
    }
}

struct SignInButton: View {
    
    @State var gmail = false
    @State var delView = false
    
    var body: some View {
        
        
        HStack{
            NavigationLink(destination:KakaoNavView()){
                Image("kakao")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width:44,height: 44)
                
            }
            
            Button(action:{self.gmail.toggle()}){
                Image("google")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width:44,height: 44)
                
            }.sheet(isPresented:self.$delView )
          
            
            
            
        }
        
    }
}
