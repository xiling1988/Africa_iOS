//
//  GalleryHeadline.swift
//  Africa
//
//  Created by Emirates on 20/09/2022.
//

import SwiftUI

struct DetailHeadline: View {
    let headlineImage: String
    let headLineText: String
    
    var body: some View {
        HStack {
            Image(systemName: headlineImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headLineText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct DetailHeadline_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeadline(headlineImage: "photo.on.rectangle.angled", headLineText: "Wilderness in Pictures")
            .previewLayout(.sizeThatFits)
    }
}
