//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Emirates on 22/09/2022.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    let video: Video
    var body: some View {
        NavigationView {
            VStack {
                VideoPlayer(player: playVideo(fileName: video.id, fileFormat: "mp4"))
                    .overlay(
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32,height: 32)
                            .padding(.vertical, 6)
                            .padding(.horizontal, 8)
                        , alignment: .topLeading)
            }
            .foregroundColor(.accentColor)
            .navigationBarTitle(video.name, displayMode: .inline)
        }
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static let videos: [Video] = Bundle.main.decode("videos.json")
    static var previews: some View {
        VideoPlayerView(video: videos[0])
    }
}
