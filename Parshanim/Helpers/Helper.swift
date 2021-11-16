//
//  Helper.swift
//  Parshanim
//
//  Created by Gabor Sarosi on 31.10.21.
//

import Foundation

struct Helper {
    
    func getParashiotNoSefer() -> [Parashah] {
        var parashiotNoSefer: [Parashah] = []
        for sefer in Constants.parashaList {
            for parasha in sefer.parashiot {
                parashiotNoSefer.append(parasha)
            }
        }
        return parashiotNoSefer
    }
    
    
}
