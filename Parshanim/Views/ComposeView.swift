//
//  ComposeView.swift
//  Parshanim
//
//  Created by Gabor Sarosi on 27.10.21.
//

import SwiftUI

struct ComposeView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var title: String = ""
    @State var dvarText: String = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Title")
                ZStack {
                    TextEditor(text: $title)
                        .frame(width: 400, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text(title)
                        .opacity(0)
                        .padding(.all, 8)
                }
                .shadow(radius: 3)
                Text("Dvar Toire")
                ZStack {
                    TextEditor(text: $dvarText)
                    Text(dvarText)
                        .opacity(0)
                        .padding(.all, 8)
                }
                .shadow(radius: 3)
                
                HStack {
                    Button {
                    } label: {
                        Image(systemName: "mic")
                    }
                    Button {
                    } label: {
                        Image(systemName: "camera")
                    }
                    Button {
                    } label: {
                        Image(systemName: "photo")
                    }
                }
                Spacer()
                HStack {
                    Text("Dismiss")
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                        .frame(width: 100, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(22)
                    Text("Save as draft")
                        .frame(width: 110, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.yellow)
                        .foregroundColor(.white)
                        .cornerRadius(22)
                    Text("Publish now")
                        .frame(width: 110, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(22)
                }
                
            }
        }


    }
}

struct ComposeView_Previews: PreviewProvider {
    static var previews: some View {
        ComposeView()
    }
}
