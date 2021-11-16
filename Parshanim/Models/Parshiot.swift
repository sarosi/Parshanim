//
//  Parshiot.swift
//  Parshanim
//
//  Created by Gabor Sarosi on 01.10.21.
//

import Foundation

struct Sefer: Codable, Identifiable {
    var id: Int
    var name_en: String
    var name_he: String
    var parashiot: [Parashah]
}

struct Parashah: Codable, Equatable, Identifiable, Hashable {
    var id: Int
    var name_en: String
    var name_he: String
}
