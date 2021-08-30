//
//  BreedListView.swift
//  CenTor Cats (iOS)
//
//  Created by Cengiz TORU on 30.08.2021.
//

import SwiftUI

struct BreedListView: View {
    let breeds:[Breed]
    
    var body: some View {
        Text("BREEDS LIST")
    }
}

struct BreedListView_Previews: PreviewProvider {
    static var previews: some View {
        BreedListView(breeds: [Breed]())
    }
}
