//
//  ParashaDetailView.swift
//  Parshanim
//
//  Created by Gabor Sarosi on 10.10.21.
//

import SwiftUI

struct ParashaDetailView: View {
    
    var parasha : Parashah
    
    var body: some View {
        VStack {
            Text(parasha.name_en)
                .font(.system(size: 34, weight: .bold))
            List {
                Text("First dvartoire")
                Text("Second dvartoire. This one is a line")
                Text("Third dvartoire. This one is long. Multiline dvartoire")
                Text("Fourth dvartoire")
            }
            Spacer()

        }
    }
}

struct ParashaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ParashaDetailView(parasha: ContentView().parashaList[0].parashiot[2])
    }
}
