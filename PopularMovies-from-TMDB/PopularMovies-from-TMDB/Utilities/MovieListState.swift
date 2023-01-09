//
//  MovieListState.swift
//  PopularMovies-from-TMDB
//
//  Created by Consultant on 1/7/23.

import SwiftUI


class MovieListState: ObservableObject {
    
    @Published var movies: [Movie]?
    @Published var isLoading: Bool = false
    @Published var error: NSError?

    private let movieStation: MovieStation
    
    init(movieStation: MovieStation = MovieStore.shared) {
        self.movieStation = movieStation
    }
    
    func loadMovies(with endpoint: MovieListEndpoint) {
        self.movies = nil
        self.isLoading = true
        
        self.movieStation.fetchMovies(from: endpoint) { [weak self] (result) in
            guard let self = self else { return }
            
            
            self.isLoading = false
            switch result {
            case .success(let response):
                
                self.movies = response.results
                
            case .failure(let error):
              
                self.error = error as NSError
            }
        }
    }
    
}
