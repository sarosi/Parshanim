//
//  Constants.swift
//  Parshanim
//
//  Created by Gabor Sarosi on 31.10.21.
//

import Foundation

struct Constants {
    static let parashaList = Bundle.main.decode([Sefer].self,
                                                from: "ParashaList.json")
    
    static let parashaListNoSefer = Helper().getParashiotNoSefer()
}
