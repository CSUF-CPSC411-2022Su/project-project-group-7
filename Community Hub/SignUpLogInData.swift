//
//  signup_login.swift
//  Community Hub
//
//  Created by Alan Guan on 6/8/22.
//

import Foundation

class UserList: ObservableObject {
    @Published var users: [SignUpInformation] = []

    init() {
        users.append(SignUpInformation(username: "tuffytitan",
                                       password: "123456abc",
                                       firstName: "Alan",
                                       lastName: "Guan",
                                       email: "tuffytitan@csu.fullerton.edu",
                                       address: "123 N Fullerton Rd",
                                       type: "volunteer"))
    }
}

struct SignUpInformation: Identifiable {
    //  public enum UserType {
//    case volunteer
//    case commercial
    //  }

    var id = UUID() // UUID() must be included as it conforms to the Identifiable protocol
    var username: String
    var password: String
    //  var login: [String: String] = [:] // Key is username and value is password.
    var firstName: String
    var lastName: String
    var email: String
    var address: String
    var type: String
}
