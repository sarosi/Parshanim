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
    @State var showTextField: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                if (!showTextField) {
                    Text("Title")
                    ZStack {
                        TextEditor(text: $title)
                        Text(title)
                            .opacity(0)
                    }
                    .padding(.all, 8)
                    .frame(width: .none, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 3)
                    
                    HStack {
                        Button {
                            withAnimation {
                                self.showTextField.toggle()
                        }
                        } label: {
                            Image(systemName: "pencil")
                        }
                        .padding(.all, 18)
                        Button {
                        } label: {
                            Image(systemName: "mic")
                        }
                        .padding(.all, 18)
                        Button {
                        } label: {
                            Image(systemName: "camera")
                        }
                        .padding(.all, 18)
                        Button {
                        } label: {
                            Image(systemName: "photo")
                        }
                        .padding(.all, 18)
                    }
                    .padding(.bottom, 12)
                }
                
                if (showTextField) {
                    Text(title)
                        .foregroundColor(.black)
                        .onTapGesture {
                            showTextField.toggle()
                        }
                    ZStack {
                        TextEditor(text: $dvarText)
                        Text(dvarText)
                            .opacity(0)
                    }
                    .background(Color.gray)
                    .shadow(radius: 3)
                    .padding(.all, 8)
                    //.padding(.leading, 8)
                    //.padding(.trailing, 8)
                    //.padding(.bottom, 18)
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
                .padding(.bottom, 18)
                
            }
        }
        .foregroundColor(.blue)


    }
}

struct ComposeView_Previews: PreviewProvider {
    static var previews: some View {
        ComposeView()
    }
}
