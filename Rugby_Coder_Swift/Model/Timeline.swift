//
//  TimelineData.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/06.
//

import Foundation

//形式が不明なため仮置き

struct Timeline: Hashable,Codable,Identifiable{
    var id = UUID()
    var startTime: String
    var endTime: String?
    var actionName: String
    var qualifier: String?
    
    func startAction(actionName: String) -> Timeline{
        //TODO
        //DataObject作成後実装
        return Timeline(startTime: videoViewModel.getCurrentTime() ?? "",actionName:actionName)
    }
    
    func endAction(timelineModel: Timeline) -> Timeline{
        var td = Timeline
        td.endTime = videoViewModel.getCurrentTime()
        print("Action:", td.actionName,  ", Start Time:", td.startTime, ", End Time:",  td.endTime!)
        return td
    }
    
    func setQualifier(timelineModel: Timeline) -> Timeline{
        var td = Timeline
        td.qualifier = "qualifier"
        print(td.qualifier!)
        return td
    }
    
}

var timelineList:[Timeline]
