//
//  DvarToire.swift
//  Parshanim
//
//  Created by Gabor Sarosi on 11.10.21.
//

import Foundation

enum Medium {
    case Text
    case Video
    case Audio
    case Image
    case Link
}

struct DvarToire: Codable, Identifiable {
    var id: String //UUID
    var timestamp: String
    var authorId: String
    var parashaId: Int
    //var medium: Medium
    var title: String
    var textContent: String
    //var binaryContent: NSObject
    var link: String
    //var tagList: [String]
    var likes: Int
}
