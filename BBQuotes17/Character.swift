//
//  Character.swift
//  BBQuotes17
//
//  Created by Victor Vaz de Oliveira on 07/10/24.
//

import Foundation

struct Character: Decodable {
    let name: String
    let birthday: String
    let occupations: [String]
    let images: [URL]
    let aliases: [String]
    let status: String
    let portrayedBy: String
}
