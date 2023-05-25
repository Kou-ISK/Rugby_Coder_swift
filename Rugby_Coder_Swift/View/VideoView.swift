//
//  VideoView.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/04.
//

import SwiftUI
import _AVKit_SwiftUI


//var player = AVPlayer(url: Bundle.main.url(forResource: "Sample", withExtension:"mp4")!)
struct VideoView: View {
    @ObservedObject var viewModel = VideoViewModel()
    private var urlString:String?{
        didSet{
            guard let urlString = urlString, let url = URL(string: urlString) else {
                return
            }
            player = AVPlayer(url: url)
            vp = (VideoPlayer(player:player))
        }
    }
    private var player = AVPlayer()
    private var vp = VideoPlayer(player: AVPlayer(url:URL(string: "file://")!))
    var body: some View {
        // TODO　VideoPlayerが表示されるようにする
        vp
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
