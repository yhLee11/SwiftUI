//
//  KakaoButton.swift
//  login_2
//
//  Created by 이연희 on 12/29/20.
//  Copyright © 2020 yeonheelee. All rights reserved.
//

import SwiftUI

struct KakaoButton: View {
    var body: some View {
        NavigationLink(destination:KakaoNavView()){
            Image("kakao")
                .renderingMode(.original)
                .resizable()
                .frame(width:44,height: 44)
            
        }
    }
}

struct KakaoButton_Previews: PreviewProvider {
    static var previews: some View {
        KakaoButton()
    }
}
