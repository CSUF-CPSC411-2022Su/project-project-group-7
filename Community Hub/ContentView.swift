//
//  ContentView.swift
//  Community Hub
//
//  Created by csuftitan on 6/8/22.
//
import SwiftUI

struct ContentView: View {
    @StateObject var manager = CommunityPost()
//    @State var loggedIn = false
    
    var body: some View {
        LogInPage().environmentObject(UserList()) 
//        TabView {
////            LogInPage()
////                .tabItem {
////                    Image(systemName: "cross")
////                    Text("Log In")
////                }
//            CommunityPostList()
//                .tabItem {
//                    Image(systemName: "info")
//                    Text("View Post")
//                }
//            ProfileView()
//                .tabItem {
//                    Image(systemName: "person")
//                    Text("View Profile")
//                }
//            CommunityPostView()
//                .tabItem {
//                    Image(systemName: "plus")
//                    Text("Create Post")
//                }
//        }.environmentObject(manager)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
