//
//  VolunteerView.swift
//  Community Hub
//
//  Created by csuftitan on 6/19/22.
//

import SwiftUI

struct VolunteerView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Image("profile")
                    .resizable()
                    .scaledToFit()
                Text("Profile Name")
                    .modifier(G7Text())
            }.frame(
                width: geometry.size.width,
                height: geometry.size.height/4,
                alignment: Alignment.center)

            VStack {
                Spacer()
                Spacer()
                Text("This is name")
                    .modifier(G7Text())
                Text("This is age")
                    .modifier(G7Text())
                Text("This is location")
                    .modifier(G7Text())
                Text("This is About me")
                    .modifier(G7Text())
            }.frame(
                width: geometry.size.width,
                height: geometry.size.height/1.5,
                alignment: Alignment.center)
        }
    }
}

struct VolunteerView_Previews: PreviewProvider {
    static var previews: some View {
        VolunteerView()
    }
}
