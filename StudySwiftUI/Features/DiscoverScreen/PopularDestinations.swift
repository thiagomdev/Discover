//
//  PopularDestinations.swift
//  StudySwiftUI
//
//  Created by Thiago Monteiro on 07/08/21.
//

import SwiftUI

struct PopularDestinations: View {
    var body: some View {
        VStack {
            HStack {
                Text("Popular  Destination")
                    .font(.system(size: 14, weight: .semibold))
                
                Spacer()
                Text("See all")
                    .font(.system(size: 14, weight: .semibold))
            }.padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 4){
                    ForEach(0..<4, id: \.self) {  num in
                        Spacer()
                            .frame(width: 125, height: 150)
//                            .background(Color(.init(white: 0.9, alpha: 1)))
                            .background(Color.red)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                            .padding(.bottom)
                        
                    }
                }.padding(.horizontal)
            }
        }
    }
}
