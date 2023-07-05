//
//  StartView.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2023/07/02.
//

import SwiftUI
import _AVKit_SwiftUI

struct StartView: View {
    @EnvironmentObject var modelData: ModelData
    @State var fileName = "FileName"
    @State var showFileChooser = false
    @State var urlString: String?
    @State var urlString2: String?
    @State var startCoding: Bool = false
    var body: some View {
        if(!startCoding){
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
                        var videoFilePath = panel.url
                        print(fileName)
                        urlString = panel.url?.absoluteString
                    }
                })
                Button("ファイル2を開く",action:{
                    // ①インスタンス生成
                    let panel2 = NSOpenPanel()
                    // ② ディレクトリの選択を許可する
                    panel2.canChooseDirectories = true
                    // ③ ファイルの選択を不可にする
                    panel2.canChooseFiles = true
                    // ④ NSOpenPanel の表示
                    if panel2.runModal() == .OK {
                        urlString2 = panel2.url?.absoluteString
                    }
                }
                )
                Button("コーディングを開始する"){
                    startCoding.toggle()
                }
            }
        }else{
            HStack{
                VStack{
                    HStack{
                        if(urlString != nil){
                            VideoPlayer(player: AVPlayer(url:URL(string:urlString!)!))
                        }
                        if(urlString2 != nil){
                            VideoPlayer(player: AVPlayer(url:URL(string:urlString2!)!))
                        }
                    }
                    TimeLineView()
                }
                CodeWindowView().padding(30)
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
