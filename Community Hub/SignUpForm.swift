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
  @State var username: String = ""
  @State var password: String = ""
  @State var firstName: String = ""
  @State var lastName: String = ""
  @State var email: String = ""
  @State var address: String = ""
  
  var body: some View {
    Text("Sign Up Page")
    Text("Please fill in the following information").padding()
    
    VStack {
      HStack{
        Text("Username: ")
        TextField("", text: $username).overlay(VStack{Divider().offset(x: 0, y: 15)})
      }
      HStack{
        Text("Password: ")
        TextField("", text: $password).overlay(VStack{Divider().offset(x: 0, y: 15)})
      }
      HStack{
        Text("First Name: ")
        TextField("", text: $firstName).overlay(VStack{Divider().offset(x: 0, y: 15)})
      }
      HStack{
        Text("Last Name: ")
        TextField("", text: $lastName).overlay(VStack{Divider().offset(x: 0, y: 15)})
      }
      HStack{
        Text("Email Address: ")
        TextField("", text: $email).overlay(VStack{Divider().offset(x: 0, y: 15)})
      }
      HStack{
        Text("Address: ")
        TextField("", text: $address).overlay(VStack{Divider().offset(x: 0, y: 15)})
      }
    }
    
    Spacer()

    VStack(alignment: .center) {
      Text("Are you a Volunteer or Recruiter?")
      
      HStack {
        Text("I'm a... ")
        NavigationLink(destination: VolunteerSignUpForm()) {
          Text("🙋Volunteer").bold()
        }
        NavigationLink(destination: RecruiterSignUpForm()) {
          Text("🤵Recruiter").bold()
        }
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
        .overlay(VStack{Divider().offset(x: 0, y: 15)})
    }.padding()
    
    VStack {
      Text("Why did you want to volunteer?")
      TextField("Your response here", text: $reasonToVolunteer)
        .overlay(VStack{Divider().offset(x: 0, y: 15)})
    }.padding()
    
    VStack {
      Text("Tell us some interesting things about yourself.")
      TextField("Your response here", text: $thingsAboutUser)
        .overlay(VStack{Divider().offset(x: 0, y: 15)})
    }.padding()
    
    HStack {
      NavigationLink(destination: CompleteSignUpPage()) {
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
        .overlay(VStack{Divider().offset(x: 0, y: 15)})
    }.padding()
    VStack {
      Text("Why do you need volunteers?")
      TextField("Your response here", text: $reasonForVolunteers)
        .overlay(VStack{Divider().offset(x: 0, y: 15)})
    }.padding()
    VStack {
      Text("Things you want volunteers to know about your company")
      TextField("Your response here", text: $thingsToKnowAboutCompany)
        .overlay(VStack{Divider().offset(x: 0, y: 15)})
    }.padding()
    HStack {
      NavigationLink(destination: CompleteSignUpPage()) {
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
