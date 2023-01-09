//
//  UpdateUIView.swift
//  PopularMovies-from-TMDB
//
//  Created by Consultant on 1/8/23.
//

import Foundation
import SwiftUI

struct ActivityIndicaterUIView: UIViewRepresentable {
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
    }
}
