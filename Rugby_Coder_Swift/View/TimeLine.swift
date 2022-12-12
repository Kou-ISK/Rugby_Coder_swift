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
        VStack{
           
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
