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
        HStack(alignment: .top){
            Table(timelineDataList){
                TableColumn("Start Time") { timelineDataList in
                    Text(timelineDataList.startTime ?? "")
                                }
                TableColumn("End Time") { timelineDataList in
                    Text(timelineDataList.endTime ?? "")
                                }
                TableColumn("Action Name") { timelineDataList in
                                    Text(timelineDataList.actionName ?? "")
                                }
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
