//
//  Rugby_Coder_SwiftApp.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/04.
//

import SwiftUI

@main
struct Rugby_Coder_SwiftApp: App {
    var body: some Scene {
//        TODO
//        複数Window表示の方法を調べる
        WindowGroup("Main"){
            ContentView()
        }.defaultSize(width: 200, height: 100)
        WindowGroup("Video"){
            VideoView()
        }.defaultSize(width: 200, height: 100)
        WindowGroup("Code Window"){
            CodeWindowView()
        }.defaultSize(width: 200, height: 100)
    }
}
        
