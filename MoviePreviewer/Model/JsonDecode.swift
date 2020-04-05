//
//  JsonDecode.swift
//  Movie
//
//  Created by panjianting on 2020/4/5.
//  Copyright © 2020 panjianting. All rights reserved.
//

import Foundation

let movieData:[Movie] = load("movie.json");

func load<T:Decodable>(_ fileName: String, as type: T.Type = T.self) -> T {
    let data:Data
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("Couldn't find \(fileName) in main bundle");
    }
    
    do {
        data  = try Data(contentsOf: file);
    } catch {
        fatalError("Couldn't find \(fileName) in main bundle");
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data);
    } catch {
        fatalError("Couldn't parse \(fileName) as \(T.self):\n\(error)")
    }
}

