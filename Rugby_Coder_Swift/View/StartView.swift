//
//  StartView.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2023/07/02.
//

import SwiftUI

struct StartView: View {
    @State var fileName = "FileName"
    @State var showFileChooser = false
    @ObservedObject var videoViewModel = VideoViewModel()
    var body: some View {
        NavigationView{
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
                        videoViewModel.videoFilePath = panel.url
                        print(fileName)
                        videoViewModel.urlString = panel.url?.absoluteString
                        videoViewModel.setPlayer(urlString: panel.url?.absoluteString ?? "")
                    }
                })
            }
        }.navigationTitle("Navi")
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
