//
//  StringExt.swift
//  BBQuotes17
//
//  Created by Victor Vaz de Oliveira on 16/10/24.
//

import Foundation

extension String {
    func removeSpaces() -> String {
        self.replacingOccurrences(of: " ", with: "")
    }
    
    func removeCaseAndSpace() -> String {
        self.removeSpaces().lowercased()
    }
}
