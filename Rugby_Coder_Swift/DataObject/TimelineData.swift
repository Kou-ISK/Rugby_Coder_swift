//
//  TimelineData.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/06.
//

import Foundation

//形式が不明なため仮置き
public struct TimelineData:Identifiable{
    public let id = UUID()
    public var startTime: String
    public var endTime: String?
    public var actionName: String
    public var qualifier: String?
    
//    init(startTime:String){
//        self.startTime = startTime
//        self.endTime = ""
//        self.actionName = ""
//        self.qualifier = ""
//    }
//    
//    init(startTime:String, endTime:String, actionName:String, qualifier:String){
//        self.startTime = startTime
//        self.endTime = endTime
//        self.actionName = actionName
//        self.qualifier = qualifier
//    }
}
