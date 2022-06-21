//
//  SignUpPage.swift
//  Community Hub
//
//  Created by Alan Guan on 6/20/22.
//

import Foundation
import SwiftUI

struct LogInPage: View {
  @State var userName: String = ""
  @State var password: String = ""
  
  var body: some View {
    NavigationView {
      VStack {
        VStack {
          Text("User Login").padding()
          
          HStack {
            Spacer()
            Text("Username: ")
            // .autocapitalization(.none) will make the first letter lowercase, delete it later if you want to make the first letter automatically uppercase
            TextField("Enter your user name", text: $userName).autocapitalization(.none)
              .overlay(VStack{Divider().offset(x: 0, y: 15)})     // Creates an underline for Textfield
            Spacer()
          }
          HStack {
            Spacer()
            Text("Password:  ")
            // SecureField() blurs out the characters for security
            SecureField("Enter your password", text: $password).autocapitalization(.none)
              .overlay(VStack{Divider().offset(x: 0, y: 15)})
            Spacer()
          }
          HStack {
            Spacer()
            NavigationLink(destination: LogInSuccess()) {
              Text("Log In").bold().padding() // Log in button directs user to their home page
            }
            Spacer()
          }
          HStack {
            Text("Don't have an account?")
            NavigationLink(destination: SignUpForm()) {
              Text("Sign Up").bold() // Sign up button directs the user to the sign up form
            }
          }
          Spacer()
        }
      }
    }
  }
}

// This is a placeholder for the login page
// delete this later when merged with teammate's code
struct LogInSuccess: View {
  var body: some View {
    Text("Login success!")
  }
}

//struct SignUpForm: View {
//  var body: some View {
//    Text("Test navigation view")
//  }
//}
