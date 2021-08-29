//
//  ContentView.swift
//  StudySwiftUI
//
//  Created by Thiago Monteiro on 07/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                ContactCategoryView()
                PopularDestinations()
                PopularRestaurantsView()
                TrendingCreators()
            }.navigationTitle("Discover")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Category: Hashable {
    let name, imageName: String
}



