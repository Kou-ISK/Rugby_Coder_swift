//
//  TimelineData.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/06.
//

import Foundation
import SwiftUI

//形式が不明なため仮置き

struct Timeline: Hashable,Codable,Identifiable{
    var id: Int
    var startTime: String
    var endTime: String
    var actionName: String
    var qualifier: String
}
