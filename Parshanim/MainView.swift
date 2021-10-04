//
//  MainView.swift
//  Parshanim
//
//  Created by Gabor Sarosi on 01.10.21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Parshiot",
                          systemImage: "binoculars")
                }
            FriendsView()
                .tabItem {
                    Label("Friends",
                          systemImage: "person.3")
                }
            SettingsView()
                .tabItem {
                    Label("Settings",
                          systemImage: "gearshape.fill")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
