//
//  GmailSheetView.swift
//  login_2
//
//  Created by 이연희 on 12/29/20.
//  Copyright © 2020 yeonheelee. All rights reserved.
//

import SwiftUI

struct GmailSheetView: View {
    
    @Binding var delView : Bool
    
    var body: some View {
        Button(action:({self.delView.toggle()})){
            Image(systemName: "arrow")
        }
    }
}

struct GmailSheetView_Previews: PreviewProvider {
    static var previews: some View {
        GmailSheetView()
    }
}
