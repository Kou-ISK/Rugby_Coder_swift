//
//  CodeWindowLogic.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/06.
//

import Foundation

func startAction(actionName: String) -> TimelineData{
//TODO
//DataObject作成後実装
    var td = TimelineData()
    var time = "time"
    td.startTime = time
    td.actionName = actionName
    print(td.startTime!)
    return td
}

func endAction(timelineData: TimelineData) -> TimelineData{
    var td = timelineData
    td.endTime = "HH:mm:ss"
    print(td.actionName!)
    print(td.startTime!)
    return td
}

func setQualifier(timelineData: TimelineData) -> TimelineData{
    var td = timelineData
    td.qualifier = "qualifier"
    print(td.qualifier!)
    return td
}
