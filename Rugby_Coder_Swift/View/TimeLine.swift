//
//  TimeLine.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/12.
//

import SwiftUI
// インスタンスを表示させる
struct TimeLine: View {
    var body: some View {
        HStack(alignment: .top){
                Rectangle()
                            .fill(Color.blue)
                            .frame(width:200)
                Rectangle()
                            .fill(Color.red)
                            .frame(width:200)
            RoundedRectangle(cornerSize: CGSizeMake(10, 10))
                        .fill(Color.green)
                        .frame(width:200)
        }
        //Responsibleにする
        ForEach(videoTimelineDatas, id:\.actionName){ videoInstance in
            Button("Button",action: {print(videoInstance)})
        }
    }
}

struct TimeLine_Previews: PreviewProvider {
    static var previews: some View {
        TimeLine()
    }
}
