//
//  MovieImagePoster.swift
//  PopularMovies-from-TMDB
//
//  Created by Consultant on 1/7/23.
//

import SwiftUI


struct MovieImagePoster: View {

    let movie: Movie
    @ObservedObject var imageLoader = ImageLoader()
    
    
    var body: some View {
        ZStack {
            if self.imageLoader.image != nil {
                Image(uiImage: self.imageLoader.image!)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(8)
                    .shadow(radius: 4)
                
            } else {
                Rectangle()
                    .fill(Color.gray.opacity(0.3))
                    .cornerRadius(8)
                    .shadow(radius: 4)
                
                Text(movie.title)
                    .multilineTextAlignment(.center)
            }
        }
        .frame(width: 204, height: 306)
        .onAppear {
            self.imageLoader.loadImage(with: self.movie.posterURL)
        }
    }
}

struct MovieImagePoster_Previews: PreviewProvider {
    static var previews: some View {
        MovieImagePoster(movie: Movie.stubbedMovie)
    }
}


