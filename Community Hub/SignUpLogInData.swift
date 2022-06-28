//
//  signup_login.swift
//  Community Hub
//
//  Created by Alan Guan on 6/8/22.
//

import Foundation

class UserList: ObservableObject {
    @Published var userList: [SignUpInformation] = []

    init() {
        userList.append(SignUpInformation(username: "tuffytitan",
                                          password: "123456abc",
                                          firstName: "Alan",
                                          lastName: "Guan",
                                          email: "tuffytitan@csu.fullerton.edu",
                                          address: "123 N Fullerton Rd",
                                          type: "Volunteer"))
    }

    func addUsers(_ newUsername: String,
                  _ newPassword: String,
                  _ newFirstName: String,
                  _ newLastName: String,
                  _ newEmail: String,
                  _ newAddress: String,
                  _ newType: String)
    {
        // Adds a new user with their information to the users list.
        userList.append(SignUpInformation(username: newUsername,
                                          password: newPassword,
                                          firstName: newFirstName,
                                          lastName: newLastName,
                                          email: newEmail,
                                          address: newAddress,
                                          type: newType))
    }

    func loginValidation(_ inputUsername: String, _ inputPassword: String) -> Bool {
        // Loops through the users list and compare the username and passwords
        // that the user inputs, if they both exist within the same user in the users list
        // then the user is successfully validated and returns true.
        // Else just return false indicating the user is not registered,
        // or has entered an incorrect username or password.
        for user in userList {
            if user.username == inputUsername, user.password == inputPassword {
                return true
            }
        }
        return false
    }
}

// Asks the user for their basic information
struct SignUpInformation: Identifiable {
    var id = UUID() // UUID() must be included as it conforms to the Identifiable protocol
    var username: String
    var password: String
    var firstName: String
    var lastName: String
    var email: String
    var address: String
    var type: String
}

// Additional questions for volunteer users
struct SignUpInformationVolunteer: Identifiable {
    var id = UUID()
    var strengths: String
    var reasonToVolunteer: String
    var thingsAboutUser: String
}

// Additional questions for company users
struct SignUpInformationCompany: Identifiable {
    var id = UUID()
    var organizationType: String
    var reasonForVolunteers: String
    var thingsToKnowAboutCompany: String
}
