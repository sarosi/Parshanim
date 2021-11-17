//
//  ParshanimApp.swift
//  Parshanim
//
//  Created by Gabor Sarosi on 01.10.21.
//

import SwiftUI
import Firebase

@main
struct ParshanimApp: App {
    
    //MARK: - Life cylce
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

struct ParshanimApp_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
