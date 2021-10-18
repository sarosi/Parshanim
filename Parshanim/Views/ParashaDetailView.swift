//
//  ParashaDetailView.swift
//  Parshanim
//
//  Created by Gabor Sarosi on 10.10.21.
//

import SwiftUI

struct ParashaDetailView: View {
    
    var parasha : Parashah
    let dvarToireList = Bundle.main.decode([DvarToire].self, from: "DivreToire.json")
    
    var body: some View {
        List {
            ForEach(dvarToireList) { dvarToire in
                DvarToireCellView(dvarToire: dvarToire)
            }
        }
        .navigationTitle(parasha.name_en)
    }
}

struct DvarToireCellView : View {
    
    var dvarToire : DvarToire
    
    var body: some View {
        VStack {
            Text(dvarToire.title)
                .font(.system(size: 22, weight: .bold, design: .default))
            Text("From: \(dvarToire.authorId)")
            Text(dvarToire.textContent)
            HStack {
                Text("Likes: \(dvarToire.likes)")
                Button {
                    
                } label: {
                    Text("Like")
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .font(.system(size:14, weight: .bold, design: .default))
                        .cornerRadius(6.0)
                        .padding(4)
                }
            }
        }
    }

}

struct ParashaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ParashaDetailView(parasha: ContentView().parashaList[0].parashiot[3])
    }
}
