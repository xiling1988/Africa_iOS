//
//  AnimalGallery.swift
//  Africa
//
//  Created by Emirates on 20/09/2022.
//

import SwiftUI

struct AnimalGallery: View {
    let animal: Animal
    var body: some View {
        
        HStack(alignment: .center, spacing: 15) {
            ForEach(animal.gallery, id: \.self) { item in
                Image(item)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                .cornerRadius(12)
            }
                
        }
    }
}

struct AnimalGallery_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalGallery(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
