//
//  Episode.swift
//  BBQuotes17
//
//  Created by Victor Vaz de Oliveira on 17/10/24.
//

import Foundation

struct Episode: Decodable {
    let episode: Int // 101
    let title: String
    let image: URL
    let synopsis: String
    let directedBy: String
    let writtenBy: String
    let airDate: String
    
    var seasonEpisode: String { // "Season 1 Episode 1"
        var episodeString = String(episode) // "101"
        let season = episodeString.removeFirst() // episodeString: "01", season: "1"
        
        if episodeString.first == "0" {
            episodeString = String(episodeString.removeLast()) // episodeString: "1"
        }
        
        return "Season \(season) Episode \(episodeString)"
    }
}
