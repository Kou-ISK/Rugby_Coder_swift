//
//  CodeWindowLogic.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/06.
//

import Foundation

class CodeWindowLogic: ObservableObject{
    var videoViewModel = VideoViewModel()
    func startAction(actionName: String) -> TimelineData{
        //TODO
        //DataObject作成後実装
        return TimelineData(startTime: videoViewModel.getCurrentTime() ?? "",actionName:actionName)
    }
    
    func endAction(timelineData: TimelineData) -> TimelineData{
        var td = timelineData
        td.endTime = videoViewModel.getCurrentTime()
        print("Action:", td.actionName,  ", Start Time:", td.startTime, ", End Time:",  td.endTime!)
        return td
    }
    
    func setQualifier(timelineData: TimelineData) -> TimelineData{
        var td = timelineData
        td.qualifier = "qualifier"
        print(td.qualifier!)
        return td
    }
}

