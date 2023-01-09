//
//  MovieListView.swift
//  PopularMovies-from-TMDB
//
//  Created by Dereje on 1/7/23.
//

import SwiftUI

struct MovieListView: View {
    
    @ObservedObject private var popularState = MovieListState()
    
    var body: some View {
        
        NavigationView {
                                
            List {
                VStack {
                    
                    if popularState.movies != nil {
                        MovieImageCardView(title: "Popular", movies: popularState.movies!)
                    } else {
                        CheckAndUpdateUIView(isLoading: self.popularState.isLoading, error: self.popularState.error) {
                            self.popularState.loadMovies(with: .popular)
                        }
                    }
                }
                .listRowInsets(EdgeInsets(top: 8, leading: 0, bottom: 16, trailing: 0))
        }
            .navigationTitle("The Movie DB")
    }
       
    .onAppear {
        self.popularState.loadMovies(with: .popular)
       
    }
  }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView()
    }
}


