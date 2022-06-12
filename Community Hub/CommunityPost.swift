//
//  CommunityPost.swift
//  Community Hub
//
//  Created by csuftitan on 6/8/22.
//

import Foundation

enum Type {
    case volunteer
    case commercial
}

// Adding needed information for creating a new post
struct CommunityPost {
    var title: String
    var body: String
    var type: Type?
    var time: String
    var location: String
    
    init() {
        self.title = ""
        self.body = ""
        self.type = nil
        self.time = ""
        self.location = ""
    }
    
//    init(title: String) {
//        self.title = title
//    }
}
