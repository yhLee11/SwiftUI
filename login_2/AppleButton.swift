//
//  appleButton.swift
//  login_2
//
//  Created by 이연희 on 12/29/20.
//  Copyright © 2020 yeonheelee. All rights reserved.
//

import SwiftUI

struct AppleButton: View {
    @Binding var isToggle:Bool
    var body: some View {
        Button(action:{self.isToggle.toggle()}){
            Image("apple")
                .renderingMode(.original)
                .resizable()
                .frame(width:44, height: 44)
        
    }
}
}

//struct appleButton_Previews: PreviewProvider {
//    static var previews: some View {
//        appleButton()
//    }
//}
