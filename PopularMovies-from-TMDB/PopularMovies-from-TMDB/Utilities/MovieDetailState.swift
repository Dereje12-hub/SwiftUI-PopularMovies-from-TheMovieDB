//
//  MovieDetailState.swift
//  PopularMovies-from-TMDB
//
//  Created by Consultant on 1/7/23.
//


import SwiftUI

class MovieDetailState: ObservableObject {
    
    private let movieStation: MovieStation
    @Published var movie: Movie?
    @Published var isLoading = false
    @Published var error: NSError?
    
    init(movieStation: MovieStation = MovieStore.shared) {
        self.movieStation = movieStation
    }
    
    func loadMovie(id: Int) {
        self.movie = nil
        self.isLoading = false

        self.movieStation.fetchMovie(id: id) {[weak self] (result) in
            guard let self = self else { return }
            
            self.isLoading = false
            switch result {
            case .success(let movie):
                self.movie = movie
            case .failure(let error):
                self.error = error as NSError
            }
        }
    }
}
