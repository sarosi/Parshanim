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

struct DvarToire {
    var id: UUID
    var timestamp: NSDate
    var authorId: Int
    var parashaId: Int
    var medium: Medium
    var textContent: String
    var binaryContent: NSObject
    var link: String
    var tagList: [String]
}
