//
//  Movie.swift
//  Movie
//
//  Created by panjianting on 2020/4/5.
//  Copyright © 2020 panjianting. All rights reserved.
//

import SwiftUI

struct Movie: Hashable, Codable, Identifiable {
    var id: Int
    var thumbnail: String
    var title: String
    var description: String
    var trailerLink: String
    var catagory: Catagory
    var isFeaturedMovie: Bool
 
    enum Catagory: String, CaseIterable, Codable, Hashable {
        case marvel = "Marvel"
        case dc = "DC"
        case actionAdventure = "Action and adventure"
    }
}

