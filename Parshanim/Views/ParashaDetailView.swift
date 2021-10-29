//
//  ParashaDetailView.swift
//  Parshanim
//
//  Created by Gabor Sarosi on 10.10.21.
//

import SwiftUI

struct ParashaDetailView: View {
    
    @State private var isPresented = false
    
    var parasha : Parashah
    let dvarToireList = Bundle.main.decode([DvarToire].self, from: "DivreToire.json")
    
    var body: some View {
        ZStack {
            List {
                ForEach(dvarToireList) { dvarToire in
                    DvarToireCellView(dvarToire: dvarToire)
                }
            }.navigationTitle(parasha.name_en)
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button("Compose") {
                        self.isPresented.toggle()
                    }
                    .fullScreenCover(isPresented: $isPresented, content: {
                        ComposeView()
                    })
                    .frame(width: 120, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.red)
                    .background(Color.gray.opacity(0.98))
                    .cornerRadius(38.0)
                    .padding()
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3),
                            radius: 5,
                            x: 3.0,
                            y: 3.0
                        )
                }
            }
        }
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
