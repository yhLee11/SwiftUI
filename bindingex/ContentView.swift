//
//  ContentView.swift
//  bindingex
//
//  Created by 이연희 on 12/29/20.
//  Copyright © 2020 이연희. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showDetailView : Bool = false
    @State var userName : String = ""

    var body: some View {
        VStack{
            Text(userName)
            Button(action:{
                self.showDetailView = true
            }){
                Text("Check Detail")
            }.sheet(isPresented: self.$showDetailView) {
                DetailView(showDetailView: self.$showDetailView, userName: self.$userName)
                
            }}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
