//
//  NewsItemView.swift
//  AppleNews
//
//  Created by dyhidrogen monoxide on 2023/5/23.
//

import SwiftUI

struct NewsItemView: View {
    var body: some View {
        VStack {
            Image("Farming")
                .resizable()
                .scaledToFit()
                
            Image("GlobeAndMail")
                .resizable()
                .scaledToFit()
                
            Text("Maritime Farmers holding breath as record-dry spring wrings region")
                .font(.title)
                .fontWeight(.semibold)
            
            Divider()
        
            HStack {
                Text("1h ago")
                Spacer()
                Image("ellipsis")
            }
            .foregroundColor(.secondary)
            .padding(15)
        }
        
        .background (
            RoundedRectangle(cornerRadius: 25.8)
                .foregroundColor(Color("ArticleSlugBackground"))
            )
        
    }
}

struct NewsItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewsItemView()
            .preferredColorScheme(.dark)
    }
}
