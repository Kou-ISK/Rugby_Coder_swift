//
//  CodeWindowView.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/06.
//

import SwiftUI

struct CodeWindowView: View {
//    @State var timelineData:TimelineData?
    @ObservedObject var logic = CodeWindowLogic()
    @ObservedObject var videoViewModel = VideoViewModel()
    @State public var videoTimelineDatas: [TimelineData] = [TimelineData(startTime: "", endTime:"", actionName: "",qualifier:"")]
    @State var passButtonPushed:Bool = false
    @State var tackleButtonPushed:Bool = false
    @State var tackleData:TimelineData?
    @State var passData:TimelineData?
    @State private var selection: TimelineData.ID?=nil
    public func getTimelineDatas() -> [TimelineData]{
        return videoTimelineDatas
    }
    var body: some View {
        VStack{
            HStack{
                Button("Pass"){
                    if(passButtonPushed){
                        videoTimelineDatas.append(logic.endAction(timelineData: passData!))
                    }else{
                        passData = logic.startAction(actionName:"Pass")
                    }
                    passButtonPushed.toggle()
                }.background(self.passButtonPushed ? Color.secondary:Color.accentColor)
                Button("Tackle"){
                    if(tackleButtonPushed){
                        videoTimelineDatas.append(logic.endAction(timelineData: tackleData!))
//                        TODO ラベルを指定するウィンドウ,ボタンを表示する
                    }else{
                        tackleData = logic.startAction(actionName:"Tackle")
                    }
                    tackleButtonPushed.toggle()
                }.background(self.tackleButtonPushed ? Color.secondary:Color.accentColor)
                Button("Jump to..."){
                    if(selection != nil){
                        print(videoTimelineDatas.first(where: { data in
                            data.id == selection!
                        })?.startTime)
                        videoViewModel.seek(jumpTime: videoTimelineDatas.first(where: { data in
                            data.id == selection!
                        })!.startTime)
                    }
                }
                Button("Button4"){
                    print(videoViewModel.$videoFilePath)
                }
            }
            Table(videoTimelineDatas,selection: $selection){
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
