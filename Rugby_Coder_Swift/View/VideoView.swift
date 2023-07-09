//
//  VideoView.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2023/07/09.
//

import SwiftUI
import _AVKit_SwiftUI

struct VideoView: View {
    @EnvironmentObject var modelData: ModelData
    @State var player:AVPlayer?
    var body: some View {
        VStack{
            VideoPlayer(player: player)
        }.frame(minWidth:200,minHeight:200)
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
