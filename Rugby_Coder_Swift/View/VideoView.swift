//
//  VideoView.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/04.
//

import SwiftUI
import AVKit

struct VideoView: View {
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "Sample", withExtension:"mp4")!)
    var body: some View {
        VideoPlayer(player:player)
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
