//
//  TimeLine.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/12.
//

import SwiftUI
// インスタンスを表示させる
struct TimeLineView: View {
    @EnvironmentObject var modelData:ModelData
    var body: some View {
        Table(modelData.timeline){
            TableColumn("Start Time"){ timelineData in
                Text(String(timelineData.startTime))
            }
            TableColumn("End Time"){ timelineData in
                Text(String(timelineData.endTime))
            }
            TableColumn("Action Name"){ timelineData in
                Button(action:{
                    print("====Button Pushed====")
                    print(timelineData.actionName)
                }){Text(String(timelineData.actionName))}
            }
        }
    }
}

struct TimeLineView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineView().environmentObject(ModelData())
    }
}
