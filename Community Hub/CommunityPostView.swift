//
//  CommunityPostView.swift
//  Community Hub
//
//  Created by csuftitan on 6/18/22.
//

import SwiftUI

struct CommunityPostView: View {
    @SceneStorage("titleText") var titleText: String = ""
    @SceneStorage("bodyText") var bodyText: String = ""
    @SceneStorage("timeText") var timeText: String = ""
    @SceneStorage("locationText") var locationText: String = ""
    @State private var showCommercial = false
    @State private var showVolunteer = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Community Post Submission")
                        .bold()
                        .font(.system(size: 20))
                }
                .padding(.bottom, 30)
                HStack {
                    Text("Title")
                        .bold()
                    Spacer()
                }
                .padding(.bottom, 5)
                HStack {
                    TextField("Title", text: $titleText)
                        .border(Color.black)
                }
                .padding(.bottom, 20)
                HStack {
                    Text("Body")
                        .bold()
                    Spacer()
                }
                TextField("Body",text: $bodyText)
                    .padding(.bottom, 200)
                    .border(Color.black)
                HStack {
                    Text("Time")
                        .bold()
                    Spacer()
                }
                .padding(.bottom, 5)
                HStack {
                    TextField("Time", text: $timeText)
                        .border(Color.black)
                }
                .padding(.bottom, 20)
                HStack {
                    Text("Location")
                        .bold()
                    Spacer()
                }
                .padding(.bottom, 5)
                HStack {
                    TextField("Location", text: $locationText)
                        .border(Color.black)
                }
                .padding(.bottom, 20)
//                Button(action: {
////                    CommunityFormView()
//                }) {
//                    Text("Submit")
//                        .modifier(ButtonDesign())
//                }
                .padding(.bottom, 30)
                NavigationLink(destination: CommunityFormView()) {
                    Text("Submit")
                        .bold()
                        .modifier(ButtonDesign())
                        .frame(maxWidth: .infinity, alignment: .center)
                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct CommunityPostView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CommunityPostView()
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}

struct ButtonDesign: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.black)
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}
