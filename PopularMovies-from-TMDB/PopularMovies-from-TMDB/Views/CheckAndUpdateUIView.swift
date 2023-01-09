//
//  LoadingView.swift
//  PopularMovies-from-TMDB
//
//  Created by Consultant on 1/8/23.
//

import Foundation
import SwiftUI


struct CheckAndUpdateUIView: View {
    
    let isLoading: Bool
    let error: NSError?
    let retryAction: (() -> ())?
    
    var body: some View {
        Group {
            if isLoading {
                HStack {
                    Spacer()
                    ActivityIndicaterUIView()
                    Spacer()
                }
            } else if error != nil {
                HStack {

                       Text(error!.localizedDescription).font(.headline)

                }
            }
        }
       
    }
        
}

struct CheckAndUpdateUIView_Previews: PreviewProvider {
    static var previews: some View {
        CheckAndUpdateUIView(isLoading: true, error: nil, retryAction: nil)
    }
}
