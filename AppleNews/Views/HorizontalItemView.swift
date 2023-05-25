//
//  HorizontalItemView.swift
//  AppleNews
//
//  Created by dyhidrogen monoxide on 2023/5/25.
//

import SwiftUI

struct HorizontalItemView: View {
    
    //MARK: Stored properties
    let image: String
    let source: String
    let headline: String
    let timeSincePosted: String
    
    
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Image(source)

                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal, 10)
                        
                    
                    Text(headline)
                        .font(.system(size: 9))
                        .fontWeight(.semibold)
//                        .frame(width: 120)
                        .padding(.leading, 10.00)
                }
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .padding([.top, .trailing], 10.0)
//                    .frame(width: 120)
                    
            }
        
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
        .frame(width: 270, height: 130)
        .background (
            RoundedRectangle(cornerRadius: 5.8)
                .foregroundColor(Color("ArticleSlugBackground"))
            )
        .padding([.top, .leading, .trailing], 15)
        
    }
}

struct HorizontalView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalItemView(image: "EJeanCarroll",
                     source: "Reuters",
                     headline: "E. Jean Carroll seeks $10 million in damages from Trump over post-verdict statements",
                     timeSincePosted: "1h ago")
            .preferredColorScheme(.dark)
    }
}
