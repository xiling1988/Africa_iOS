//
//  VideoModel.swift
//  Africa
//
//  Created by Emirates on 21/09/2022.
//

import Foundation

struct Video: Codable, Identifiable {
    let id, name, headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
