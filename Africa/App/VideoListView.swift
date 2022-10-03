//
//  VideoListView.swift
//  Africa
//
//  Created by Emirates on 07/08/2022.
//

import SwiftUI

struct VideoListView: View {
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    var body: some View {
        
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(video: item)) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                    
                }
            }
            .listStyle(.insetGrouped)
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                            videos.shuffle()
                            hapticImpact.impactOccurred()
                        } label: {
                            Image(systemName: "arrow.2.squarepath")
                        }

                    }
                }
            }
            
        }
    }

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
