//
//  CodeWindowView.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/06.
//

import SwiftUI

struct CodeWindowView: View {
//    @State var timelineData:TimelineData?
    @State public var videoTimelineDatas: [TimelineData] = [TimelineData(startTime: "", endTime:"", actionName: "",qualifier:"")]
    @State var passButtonPushed:Bool = false
    @State var tackleButtonPushed:Bool = false
    @State var tackleData:TimelineData?
    @State var passData:TimelineData?
    public func getTimelineDatas() -> [TimelineData]{
        return videoTimelineDatas
    }
    var body: some View {
        VStack{
            HStack{
                Button("Pass"){
                    if(passButtonPushed){
                        videoTimelineDatas.append(endAction(timelineData: passData!))
                    }else{
                        passData = startAction(actionName:"Pass")
                    }
                    passButtonPushed.toggle()
                }.background(self.passButtonPushed ? Color.secondary:Color.accentColor)
                Button("Tackle"){
                    if(tackleButtonPushed){
                        videoTimelineDatas.append(endAction(timelineData: tackleData!))
//                        TODO ラベルを指定するウィンドウ,ボタンを表示する
                        }
                    }else{
                        tackleData = startAction(actionName:"Tackle")
                    }
                    tackleButtonPushed.toggle()
                }.background(self.tackleButtonPushed ? Color.secondary:Color.accentColor)
                Button("Button3"){
                    print("出力します")
                }
                Button("Button4"){
                }
            }
            Table(videoTimelineDatas){
                TableColumn("Start Time"){ TimelineData in
                    Text(String(TimelineData.startTime))
                }
                TableColumn("End Time"){ TimelineData in
                    Text(String(TimelineData.endTime!))
                }
                TableColumn("Action Name"){ TimelineData in
                    Text(String(TimelineData.actionName))
                }
            }
        }
    }
}


struct CodeWindowView_Previews: PreviewProvider {
    static var previews: some View {
        CodeWindowView()
    }
}
