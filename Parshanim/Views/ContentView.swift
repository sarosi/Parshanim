//
//  ContentView.swift
//  Parshanim
//
//  Created by Gabor Sarosi on 01.10.21.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("kLanguageKey") var language: String = UserDefaults.standard.string(forKey: "kLanguageKey") ?? "english"
    
    var body: some View {
        NavigationView {
            List {
                ForEach(Constants.parashaList) { sefer in
                    Section(header: Text(language == "english" ? sefer.name_en : sefer.name_he)) {
                        ForEach(sefer.parashiot) { parasha in
                            NavigationLink(destination: ParashaDetailView(parasha: parasha)) {
                                Text(language == "english" ? parasha.name_en : parasha.name_he)
                            }
                        }
                    }
                }
            }
            .navigationTitle(language == "english" ? "Chumash" : "חומש")
        }
        .environment(\.locale, language == "english" ? Locale(identifier: "en") : Locale(identifier: "he"))
        .environment(\.layoutDirection, language == "english" ? .leftToRight : .rightToLeft)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
