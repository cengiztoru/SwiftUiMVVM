//
//  ErrorView.swift
//  CenTor Cats (iOS)
//
//  Created by Cengiz TORU on 30.08.2021.
//

import SwiftUI

struct ErrorView: View {
    @ObservedObject var breedFetcher : BreedFetcher
    var body: some View {
        Text("CENTOR WE HAD AN ERROR!")
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(breedFetcher: BreedFetcher())
    }
}
