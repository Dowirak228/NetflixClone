//
//  Movie.swift
//  NetflixClone
//
//  Created by NODIR KARIMOV on 01/02/22.
//

import UIKit

struct TrendingMovieResponse: Codable {
    let results: [Movie]
}

struct Movie: Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_state: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}
