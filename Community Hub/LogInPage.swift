//
//  SignUpPage.swift
//  Community Hub
//
//  Created by Alan Guan on 6/20/22.
//

import Foundation
import SwiftUI

struct LogInPage: View {
    // @AppStorage var user: UserList
    @State var userName: String = ""
    @State var password: String = ""
    @State private var isShowingDetailView = false

    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("User Login").padding()

                    HStack {
                        Spacer()
                        Text("Username: ")
                        TextField("Enter your user name", text: $userName).modifier(TextFieldUnderLines())
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Text("Password:  ")
                        // SecureField() blurs out the characters for security
                        SecureField("Enter your password", text: $password).modifier(TextFieldUnderLines())
                        Spacer()
                    }
                    HStack {
                        Spacer()
//                        NavigationLink(destination: LogInSuccess()) {
//                            Text("Log In").bold().padding() // Log in button directs user to their home page
//                        }
                            VStack {
                                NavigationLink(destination: ProfileView(), isActive: $isShowingDetailView) { EmptyView() }
                                Button("Login") {
                                    self.isShowingDetailView = true
                                }.modifier(ButtonDesign())
                            }.padding()
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
        }.navigationBarHidden(true)
    }
}

// This is a placeholder for the login page
// delete this later when merged with teammate's code
struct LogInSuccess: View {
    var body: some View {
        Text("Login success!")
    }
}
