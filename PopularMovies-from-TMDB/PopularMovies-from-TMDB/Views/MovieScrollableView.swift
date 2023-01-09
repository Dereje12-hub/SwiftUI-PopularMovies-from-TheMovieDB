//
//  ScrollableView.swift
//  PopularMovies-from-TMDB
//
//  Created by Dereje on 1/8/23.
//

import SwiftUI

struct MovieScrollableView: View {
    
    let title: String
    let movies: [Movie]
    
    var body: some View {
       
        VStack(alignment: .leading, spacing: 0) {
        
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.green)
                .padding(.vertical)
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 25) {
                    ForEach(self.movies) { movie in
                        NavigationLink(destination: MovieDetailView(movieId: movie.id)) {
                            MovieImageCard(movie: movie)
                                .frame(width: 300, height: 200)
                        }
            
                        .padding(.leading, movie.id == self.movies.first!.id ? 20 : 0)
                        .padding(.trailing, movie.id == self.movies.last!.id ? 20 : 0)
                    }
                }
            }
        }
    }
}

struct MovieScrollableView_Previews: PreviewProvider {
    static var previews: some View {
        MovieImageCardView(title: "Latest", movies: Movie.stubbedMovies)
    }
}
