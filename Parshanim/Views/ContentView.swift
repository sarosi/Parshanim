//
//  ContentView.swift
//  Parshanim
//
//  Created by Gabor Sarosi on 01.10.21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var language = "he"

    let parashaList = Bundle.main.decode([Sefer].self,
                                      from: "ParashaList.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(parashaList) { sefer in
                    Section(header: Text(language == "he" ? sefer.name_he : sefer.name_en)) {
                        ForEach(sefer.parashiot) { parasha in
                            Text(language == "he" ? parasha.name_he : parasha.name_en)
                        }
                    }
                }
            }
            .navigationTitle("Chumash")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
