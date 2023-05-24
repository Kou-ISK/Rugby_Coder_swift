//
//  VideoModel.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2023/05/23.
//

import Foundation
import AVKit
import _AVKit_SwiftUI

class VideoViewModel:ObservableObject{
    @Published var videoFilePath:URL?
    @Published var videoTime:String?
    @Published var urlString : String? {
        didSet {
            guard let urlString = urlString, let url = URL(string: urlString) else {
                return
            }
            player = AVPlayer(url: url)
            player.seek(to: .zero)
            player.play()
        }
    }
        var player = AVPlayer()
    
    func getCurrentTime() -> String? {
        let currentTime = player.currentTime()
        videoTime = String(CMTimeGetSeconds(currentTime))
        return videoTime
    }

    // TODO seekできるようにする
    func seek(jumpTime:String){
        player.seek(to: CMTimeMakeWithSeconds(Float64(jumpTime) ?? 0.0, preferredTimescale: 0))
    }
}
