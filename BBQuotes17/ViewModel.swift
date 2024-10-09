//
//  ViewModel.swift
//  BBQuotes17
//
//  Created by Victor Vaz de Oliveira on 09/10/24.
//

import Foundation

@Observable
class ViewModel {
    enum FetchStatus {
        case notStarted
        case fetching
        case success
        case failed(error: Error)
    }
    
    private(set) var status: FetchStatus = .notStarted
    
    private let fetcher = FetchService()
    
    var quote: Quote
    var character: Character
    
    init() {
        
    }
}
