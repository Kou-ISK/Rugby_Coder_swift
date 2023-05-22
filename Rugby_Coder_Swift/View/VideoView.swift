//
//  VideoView.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/04.
//

import SwiftUI
import AVKit

var videoTime:String?
var player = AVPlayer(url: videoFilePath!)
//var player = AVPlayer(url: Bundle.main.url(forResource: "Sample", withExtension:"mp4")!)
struct VideoView: View {
    var body: some View {
        VideoPlayer(player:player)
    }
}

func getCurrentTime() -> String? {
    let currentTime = player.currentTime()
    videoTime = String(CMTimeGetSeconds(currentTime))
    return videoTime
}

// TODO seekできるようにする
func seek(jumpTime:String){
    player.seek(to: CMTimeMakeWithSeconds(Float64(jumpTime) ?? 0.0, preferredTimescale: 0))
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
