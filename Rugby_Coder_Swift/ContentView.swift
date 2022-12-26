//
//  ContentView.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/04.
//

import SwiftUI
var videoFilePath =  URL(string:"/Users/isakakou/Downloads/Sample.mp4")
struct ContentView: View {
    @State var fileName = "FileName"
    @State var showFileChooser = false
    var body: some View {
        VStack {
            Image(systemName: "folder")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(fileName)
            Button("ファイルを開く",action:{
                // ①インスタンス生成
                       let panel = NSOpenPanel()
                       // ② ディレクトリの選択を許可する
                       panel.canChooseDirectories = true
                       // ③ ファイルの選択を不可にする
                       panel.canChooseFiles = true
                       // ④ NSOpenPanel の表示
                if panel.runModal() == .OK {
                    // ⑤ 選択されたファイル名の表示
                    fileName = panel.url?.lastPathComponent ?? ""
                    videoFilePath = panel.url
                }
            })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
