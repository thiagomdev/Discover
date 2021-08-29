//
//  PopularRestaurantsView.swift
//  StudySwiftUI
//
//  Created by Thiago Monteiro on 07/08/21.
//

import SwiftUI

struct PopularRestaurantsView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Popular  Restaurants")
                    .font(.system(size: 14, weight: .semibold))
                
                Spacer()
                Text("See all")
                    .font(.system(size: 14, weight: .semibold))
            }.padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 4){
                    ForEach(0..<10, id: \.self) {  num in
                        Spacer()
                            .frame(width: 200, height: 80)
                            .background(Color.yellow)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                            .padding(.bottom)
                        
                    }
                }.padding(.horizontal)
            }
        }
    }
}
