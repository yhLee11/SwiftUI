//
//  DetailView.swift
//  bindingex
//
//  Created by 이연희 on 12/29/20.
//  Copyright © 2020 이연희. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    @Binding var showDetailView : Bool
    @Binding var userName : String
    
    
    
    var body: some View {
        
        VStack {
            
            Button(action:{
              self.showDetailView = false
                  }){
                      //Image(systemName: "left.arrow")
                    Text("Back Button")
                  }
              
              
              Button(action:{
                    self.showDetailView = false
                self.userName="Go home"
                
                        }){
                            Text("AAA")
                        }
              
              Button(action:{
                    self.showDetailView = false
                self.userName="BBB"
                        }){
                           Text("BBB")
                        }
            
        }

        
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
