//
//  SignUpForm.swift
//  Community Hub
//
//  Created by Alan Guan on 6/20/22.
//

import Foundation
import SwiftUI

struct SignUpForm: View {
    // Placeholder variables, later use the ones at SignUpLogInData.swift
    @EnvironmentObject var user: UserList
    @SceneStorage("username") var username: String = ""
    @SceneStorage("password") var password: String = ""
    @SceneStorage("firstName") var firstName: String = ""
    @SceneStorage("lastName") var lastName: String = ""
    @SceneStorage("email") var email: String = ""
    @SceneStorage("address") var address: String = ""
    @SceneStorage("type") var type: String = "Volunteer"
    @State private var isShowingDetailView = false

    var body: some View {
//        NavigationView {
        VStack {
            Text("Sign Up Page")
            Text("Please fill in the following information").padding()
            HStack {
                Text("Username: ")
                TextField("", text: $username).modifier(TextFieldUnderLines())
            }
            HStack {
                Text("Password: ")
                TextField("", text: $password).modifier(TextFieldUnderLines())
            }
            HStack {
                Text("First Name: ")
                TextField("", text: $firstName).modifier(TextFieldUnderLines())
            }
            HStack {
                Text("Last Name: ")
                TextField("", text: $lastName).modifier(TextFieldUnderLines())
            }
            HStack {
                Text("Email Address: ")
                TextField("", text: $email).modifier(TextFieldUnderLines())
            }
            HStack {
                Text("Address: ")
                TextField("", text: $address).modifier(TextFieldUnderLines())
            }
//                HStack {
//                    Spacer()
//                    NavigationLink(destination: ProfileView()) {
//                        Text("Sign Up").bold().padding() // Log in button directs user to their home page
//                    }
//                }
        }.padding()
//        }.padding().navigationBarHidden(true)
    
        Spacer()

        VStack(alignment: .center) {
//            Text("Are you a Volunteer or Recruiter?")
//
//            HStack {
//                Text("I'm a... ")
//                NavigationLink(destination: VolunteerSignUpForm()) {
//                    Text("🙋Volunteer").bold()
//                }
//                NavigationLink(destination: RecruiterSignUpForm()) {
//                    Text("🤵Recruiter").bold()
//                }
//            }
            //user.addUsers(username, password, firstName, lastName, email, address, "Volunteer")
            
            
//            NavigationLink(destination: LogInPage()) {
//                Text("Complete Sign up").bold()
//            }.modifier(ButtonDesign())
            
            
            Button(action: {
                print("Successfully added a new user to your list!")
                self.user.userList.append(SignUpInformation(username: username,
                                                       password: password,
                                                       firstName: firstName,
                                                       lastName: lastName,
                                                       email: email,
                                                       address: address,
                                                       type: type))
                username = ""
                password = ""
                firstName = ""
                lastName = ""
                email = ""
                address = ""
                type = ""
                print("Executed add statement.")
            })
            {
                Text("Add new user")
            }
            
        }
        Spacer()
    }
}

struct VolunteerSignUpForm: View {
    @State var strengths = ""
    @State var reasonToVolunteer = ""
    @State var thingsAboutUser = ""
  
    var body: some View {
        Text("Volunteer Sign Up").font(.custom("Arial", size: 20))
    
        VStack(alignment: .center) {
            Text("What are some of your strengths?")
            TextField("Your response here", text: $strengths)
                .modifier(TextFieldUnderLines())
        }.padding()
    
        VStack {
            Text("Why did you want to volunteer?")
            TextField("Your response here", text: $reasonToVolunteer)
                .modifier(TextFieldUnderLines())
        }.padding()
    
        VStack {
            Text("Tell us some interesting things about yourself.")
            TextField("Your response here", text: $thingsAboutUser)
                .modifier(TextFieldUnderLines())
        }.padding()
    
        HStack {
            NavigationLink(destination: LogInPage()) {
                Text("Complete Sign up").bold()
            }
        }
    
        Spacer()
    }
}

struct RecruiterSignUpForm: View {
    @State var organizationType = ""
    @State var reasonForVolunteers = ""
    @State var thingsToKnowAboutCompany = ""
  
    var body: some View {
        VStack {
            Text("Recruiters Sign Up").font(.custom("Arial", size: 20))
        }.padding()
        VStack {
            Text("Your organization type?")
            TextField("Your response here", text: $organizationType)
                .modifier(TextFieldUnderLines())
        }.padding()
        VStack {
            Text("Why do you need volunteers?")
            TextField("Your response here", text: $reasonForVolunteers)
                .modifier(TextFieldUnderLines())
        }.padding()
        VStack {
            Text("Things you want volunteers to know about your company")
            TextField("Your response here", text: $thingsToKnowAboutCompany)
                .modifier(TextFieldUnderLines())
        }.padding()
        HStack {
            NavigationLink(destination: LogInPage()) {
                Text("Complete Sign up").bold()
            }
        }
        Spacer()
    }
}

struct CompleteSignUpPage: View {
    var body: some View {
        Text("Congratulations! Your sign up is complete!")
    }
}
