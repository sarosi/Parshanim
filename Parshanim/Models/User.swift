//
//  User.swift
//  Parshanim
//
//  Created by Gabor Sarosi on 19.10.21.
//

import Foundation

struct User: Codable, Identifiable {
    
    var id: UUID
    var name: String
    var otherName: String
    var profilePicture: URL // String, binary (base64 encoded)
    var email: String
    var follows: [String]
    var followedBy: [String]
    
}
