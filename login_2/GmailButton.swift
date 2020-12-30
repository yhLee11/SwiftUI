//
//  GmailButton.swift
//  login_2
//
//  Created by 이연희 on 12/29/20.
//  Copyright © 2020 yeonheelee. All rights reserved.
//

import SwiftUI

struct GmailButton: View {
    
    @State var gmail : Bool = false
    
    var body: some View {
      Button(action:{self.gmail.toggle()}){
                Image("google")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width:44,height: 44)

        }.sheet(isPresented: $gmail){GmailSheetView()}
    }
}

struct GmailButton_Previews: PreviewProvider {
    static var previews: some View {
        GmailButton()
    }
}
