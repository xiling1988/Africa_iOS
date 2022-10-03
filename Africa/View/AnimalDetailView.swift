//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Emirates on 20/09/2022.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: Animal
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                Text(animal.name.uppercased())
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                Text(animal.headline)
                    .font(.headline)
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                
                // GALLERY
                Group {
                    DetailHeadline(headlineImage: "photo.on.rectangle.angled", headLineText: "Wilderness in Pictures")
                    ScrollView(.horizontal, showsIndicators: false) {
                        AnimalGallery(animal: animal)
                        }
                    }
                Group {
                    DetailHeadline(headlineImage: "questionmark.circle", headLineText: "Did you know...?")
                    InsetFactView(animal: animal)
                }
                Group {
                    DetailHeadline(headlineImage: "info.circle", headLineText: "All about the \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                Group {
                    DetailHeadline(headlineImage: "map", headLineText: "National Parks")
                    InsetMapView()
                }
                Group {
                    DetailHeadline(headlineImage: "books.vertical", headLineText: "Learn More")
                    ExternalWeblinkView(animal: animal)
                }
                .padding(.horizontal)
                }
            }
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }
    }

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
        .previewDevice("iPhone 14  Pro")
    }
}
        
