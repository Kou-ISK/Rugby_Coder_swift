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
        WindowGroup{
            ContentView()
            VideoView()
            CodeWindowView()
        }
    }
}
        
