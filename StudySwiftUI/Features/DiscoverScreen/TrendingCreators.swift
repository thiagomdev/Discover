//
//  TrendingCreators.swift
//  StudySwiftUI
//
//  Created by Thiago Monteiro on 07/08/21.
//

import SwiftUI

struct TrendingCreators: View {
    var body: some View {
        VStack {
            HStack {
                Text("Trending Creators")
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
                        Spacer()
                            .frame(width: 68, height: 68)
                            .background(Color.blue)
                            .cornerRadius(68)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}
