//
//  CodeWindowLogic.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/06.
//

import Foundation

func setActionStartTime() -> TimelineData{
//TODO
//DataObject作成後実装
    var td = TimelineData()
    td.startTime = "Start time"
    print(td.startTime!)
    return td
}

func setAction(timelineData: TimelineData) -> TimelineData{
    var td = timelineData
    td.actionName = "action"
    print(td.actionName!)
    return td
}
