//
//  NewsListView.swift
//  AppleNews
//
//  Created by dyhidrogen monoxide on 2023/5/23.
//

import SwiftUI

struct NewsListView: View {
    
    
    
    
    
    
    var body: some View {
        ScrollView {
            
            NewsItemView(image: "Farming",
                         source: "GlobeAndMail",
                         headline: "Maritime Farmers holding breath as record-dry spring wrings region",
                         timeSincePosted: "1h ago")
            
            NewsItemView(image: "EJeanCarroll",
                         source: "Reuters",
                         headline: "E. Jean Carroll seeks $10 million in damages from Trump over post-verdict statements",
                         timeSincePosted: "1h ago")
            
            NewsItemView(image: "sheep",
                         source: "TheGuardian",
                         headline: "New Zealand's ration of sheep to humans at lowest point in 170 years",
                         timeSincePosted: "1h ago")
            
        }
    }
}
struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
            .preferredColorScheme(.dark)
    }
}
