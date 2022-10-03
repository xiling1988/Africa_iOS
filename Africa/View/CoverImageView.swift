//
//  CoverImageView.swift
//  Africa
//
//  Created by Emirates on 07/08/2022.
//

import SwiftUI

struct CoverImageView: View {
    
    // MARK: - PROPERTIES
    let images : [CoverImage] = Bundle.main.decode("covers.json")
    
    
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(images) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: LOOP
        } //: TAB
        .tabViewStyle(.page)
    }
}

// MARK: - PREVIEW

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
