//
//  MovieBackdropCard.swift
//  PopularMovies-from-TMDB
//
//  Created by Consultant on 1/7/23.
//


import SwiftUI


struct MovieImageCard: View {
    
    let movie: Movie
    @ObservedObject var imageLoader = ImageLoader()
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                Rectangle()
                    .fill(Color.brown.opacity(0.5))
                
                if self.imageLoader.image != nil {
                    Image(uiImage: self.imageLoader.image!)
                    .resizable()
                }
            }
            .aspectRatio(16/9, contentMode: .fit)
            .cornerRadius(10)
            .shadow(radius: 4)
            
            Text(movie.title)
        }
        .lineLimit(1)
        .onAppear {
            self.imageLoader.loadImage(with: self.movie.backdropURL)
        }
    }
}

struct MovieImageCard_Previews: PreviewProvider {
    static var previews: some View {
        MovieImageCard(movie: Movie.stubbedMovie)
    }
}
