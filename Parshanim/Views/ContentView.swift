//
//  ContentView.swift
//  Parshanim
//
//  Created by Gabor Sarosi on 01.10.21.
//

import SwiftUI

struct ContentView: View {

    let parashaList = Bundle.main.decode([Sefer].self,
                                      from: "ParashaList.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(parashaList) { sefer in
                    Section(header: Text(sefer.name)) {
                        ForEach(sefer.parashiot) { parasha in
                            Text(parasha.name)
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
