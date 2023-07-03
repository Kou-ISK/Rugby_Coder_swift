//
//  StartView.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2023/07/02.
//

import SwiftUI

struct StartView: View {
    @EnvironmentObject var modelData: ModelData
    @State var fileName = "FileName"
    @State var showFileChooser = false
    var body: some View {
        HStack{
            VStack {
                Image(systemName: "folder")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text(fileName)
                Button("ファイルを開く",action:{
                    // ①インスタンス生成
                    let panel = NSOpenPanel()
                    // ② ディレクトリの選択を許可するf
                    panel.canChooseDirectories = true
                    // ③ ファイルの選択を不可にする
                    panel.canChooseFiles = true
                    // ④ NSOpenPanel の表示
                    if panel.runModal() == .OK {
                        // ⑤ 選択されたファイル名の表示
                        fileName = panel.url?.lastPathComponent ?? ""
                        var videoFilePath = panel.url
                        print(fileName)
                        var urlString = panel.url?.absoluteString
                    }
                })
            }
            TimeLineView()
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
