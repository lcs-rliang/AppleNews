//
//  NewsItemView.swift
//  AppleNews
//
//  Created by dyhidrogen monoxide on 2023/5/23.
//

import SwiftUI

struct VerticalItemView: View {
    
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
                .cornerRadius(10)
                .padding([.top], 10.0)
                
            Image(source)
                
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 5.0)

//                .frame(width: 120)
                
            Text(headline)
                .font(.system(size: 9))
                .fontWeight(.semibold)
                .padding(.horizontal, 10.0)
                
            
            Divider()
        
            HStack {
                Text(timeSincePosted)
                    .font(.system(size: 8))
                Spacer()
                Image("ellipsis")
            }
            .foregroundColor(.secondary)
            
            .padding([.leading, .bottom], 10.0)
            
        }
        .frame(width: 120, height: 220)
        .background (
            RoundedRectangle(cornerRadius: 5.8)
                .foregroundColor(Color("ArticleSlugBackground"))
            )
        .padding(15)
        
    }
}

struct VerticalItemView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalItemView(image: "EJeanCarroll",
                     source: "Reuters",
                     headline: "E. Jean Carroll seeks $10 million in damages from Trump over post-verdict statements",
                     timeSincePosted: "1h ago")
            .preferredColorScheme(.dark)
    }
}
