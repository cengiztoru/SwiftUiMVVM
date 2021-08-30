//
//  ContentView.swift
//  Shared
//
//  Created by User on 30.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var breedFetcher = BreedFetcher()

    var body: some View {
        
        if breedFetcher.isLoading {
            LoadingView()
        } else if breedFetcher.errorString != nil {
            ErrorView(breedFetcher: breedFetcher)
        } else {
            BreedListView(breeds: breedFetcher.breeds)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
