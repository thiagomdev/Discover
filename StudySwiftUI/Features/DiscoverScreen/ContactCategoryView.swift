//
//  ContactCategoryView.swift
//  StudySwiftUI
//
//  Created by Thiago Monteiro on 07/08/21.
//

import SwiftUI

struct ContactCategoryView: View {
    
    let categories: [Category] = [
        .init(name: "Art", imageName: "paintpalette.fill"),
        .init(name: "Food", imageName: "sportscourt.fill"),
        .init(name: "Music", imageName: "music.mic"),
        .init(name: "Weather", imageName: "sun.dust.fill"),
        .init(name: "Games", imageName: "gamecontroller.fill"),
        
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 14) {
                ForEach(categories, id: \.self) {  category in
                    
                    VStack(spacing: 8) {
//                        Spacer()
                        Image(systemName: category.imageName)
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .frame(width: 68, height: 68)
                            .background(Color.green)
                            .cornerRadius(68)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                        Text(category.name)
                            .font(.system(size: 12, weight: .semibold))
                    }
                }
            }.padding(.horizontal)
        }
    }
}
