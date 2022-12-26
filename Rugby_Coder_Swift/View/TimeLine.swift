//
//  TimeLine.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/12.
//

import SwiftUI
// インスタンスを表示させる
struct TimeLine: View {
    @State private var timelineDataList = videoTimelineDatas
    var body: some View {
            Table(videoTimelineDatas){
                TableColumn("Start Time") { timelineData in
                    Text(timelineData.startTime!)
                                }
                TableColumn("End Time") { timelineData in
                    Text(timelineData.endTime!)
                                }
                TableColumn("Action Name") { timelineData in
                    Text(timelineData.actionName!)
                                }
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
