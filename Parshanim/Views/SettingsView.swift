//
//  SettingsView.swift
//  Parshanim
//
//  Created by Gabor Sarosi on 03.10.21.
//

import SwiftUI

enum Language: String, Codable, CaseIterable {
    case en = "english"
    case he = "עברית"
    
    var localizedName: LocalizedStringKey { LocalizedStringKey(rawValue) }
}

struct SettingsView: View {
    
    @AppStorage("kLanguageKey") var selectedLangauge: Language = .en
        
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker(selection: $selectedLangauge, label: Text("Language"), content: {
                        ForEach(Language.allCases, id: \.self) { value in
                            Text(value.localizedName)
                                .tag(value)
                        }
                    })
                }.onChange(of: selectedLangauge, perform: { tag in
                    _ = Language(rawValue: tag.rawValue)
                    UserDefaults.standard.set(tag.rawValue, forKey: "kLanguageKey")
                })
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
