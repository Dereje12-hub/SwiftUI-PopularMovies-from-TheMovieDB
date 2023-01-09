//
//  LoadDecode.swift
//  PopularMovies-from-TMDB
//
//  Created by Dereje on 1/8/23.
//

import Foundation

extension Movie {
    
    static var stubbedMovies: [Movie] {
        let response: MovieResponse? = try? Bundle.main.loadAndDecodeJSON(filename: "MovieList")
        return response! .results
    }
    
    static var stubbedMovie: Movie {
        stubbedMovies[0]
    }
}


extension Bundle {
    
    func loadAndDecodeJSON<D: Decodable>(filename: String) throws -> D? {
        guard let url = self.url(forResource: filename, withExtension: "json") else {
            return nil
        }
        let data = try Data(contentsOf: url)
        let jsonDecoder = JsonHelper.jsonDecoder
        let decodedModel = try jsonDecoder.decode(D.self, from: data)
        return decodedModel
    }
}
