//
//  ContentView.swift
//  Community Hub
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, world!")
//            .padding()
      LogInPage()
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LogInPage: View {
  @State var userName: String = ""
  @State var password: String = ""
  
  var body: some View {
    VStack {
      VStack {
        Text("User Login").padding()
        
        HStack {
          Spacer()
          Text("Username: ")
          TextField("Enter your user name", text: $userName)
          Spacer()
        }
        
        HStack {
          Spacer()
          Text("Password: ")
          TextField("Enter your password", text: $password)
          Spacer()
        }
        
        
        HStack {
          Text("Don't have an account?")
          Button (action: {
            print("Test message for sign-up button")
          }) {
            Text("Sign Up")   // This button should redirect the user to the SignUp page
          }
        }.padding() // Use padding() here to make some space between this HStack and the above HStack that has the password TextField. Might change this later if there's a better spacing option.
        
        Spacer() // This spacer function makes all the content in this VStack go to the top of the page
      }
    
      
    }
  }
}
