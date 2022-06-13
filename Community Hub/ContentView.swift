//
//  ContentView.swift
//  Community Hub
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    @State var id: String = ""
    @State var password: String = ""
    
    
struct Information: View {
    @Binding var id: String
    @Binding var password: String
    var body: some View {
        Text(id)
        Text(password)
    }
}
    var body: some View {
        // TODO: Enclose this entire VStack with GeometryReader in Model 3
        GeometryReader { geometry in
        VStack {
            // TODO: Add frame method call to this VStack in Model 3
            VStack {
                Text("SafeWalk Volunteer")
                HStack {
                    Spacer()
                    Text("ID: ")
                    TextField("ID", text: $id)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("Password: ")
                    TextField("password", text: $password)
                    Spacer()
                }
               
            }.frame(height: geometry.size.height / 2)
                .frame(width: geometry.size.width / 2)
            Spacer()
            /* TODO: Replace the entire Text VStack below with sub view provided in Model 2
             */
            
            VStack {
                Information (id: $id, password: $password)
            }
        }
        }
    }
}

// TODO: Add Information structure provided in Model 2

// TODO: Add custom modifier below then use it to customizes your views for Model 5

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

