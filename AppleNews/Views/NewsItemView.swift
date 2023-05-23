//
//  NewsItemView.swift
//  AppleNews
//
//  Created by dyhidrogen monoxide on 2023/5/23.
//

import SwiftUI

struct NewsItemView: View {
    
    //MARK: Stored properties
    let image: String
    let source: String
    let headline: String
    let timeSincePosted: String
    
    
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .scaledToFit()
                
            Image(source)
                .resizable()
                .scaledToFit()
                
            Text(headline)
                .font(.title)
                .fontWeight(.semibold)
            
            Divider()
        
            HStack {
                Text(timeSincePosted)
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
        NewsItemView(image: "EJeanCarroll",
                     source: "Reuters",
                     headline: "E. Jean Carroll seeks $10 million in damages from Trump over post-verdict statements",
                     timeSincePosted: "1h ago")
            .preferredColorScheme(.dark)
    }
}
