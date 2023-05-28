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
    @State var player = AVPlayer()
    @State var vp = VideoPlayer(player: AVPlayer(url:URL(string:"file://")!))
    public func setPlayer(){
        self.player = viewModel.player
        self.vp = VideoPlayer(player:self.player)
    }
    var body: some View {
        // TODO　VideoPlayerが表示されるようにする
        vp.onAppear(perform: {self.setPlayer()})
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
