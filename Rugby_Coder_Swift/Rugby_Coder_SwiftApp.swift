//
//  Rugby_Coder_SwiftApp.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/04.
//

import SwiftUI

@main
struct Rugby_Coder_SwiftApp: App {
    @StateObject var modelData = ModelData()
    var body: some Scene {
        WindowGroup{
            ContentView().environmentObject(modelData)
        }
    }
}

        
