//
//  Tip.swift
//  Trake
//
//  Created by MAC on 19/4/2021.
//

import Foundation


struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
