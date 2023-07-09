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
    @State var player1:AVPlayer?
    @State var player2:AVPlayer?
    
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
            // TODO フレームのサイズを変更できるように修正
            HStack{
                VStack{
                    HStack{
                        if(urlString != nil){
                            VideoView(player:AVPlayer(url:URL(string:urlString!)!))
                                .frame(minWidth:200,minHeight:200)
                        }
                        if(urlString2 != nil){
                            VideoView(player:AVPlayer(url:URL(string:urlString2!)!))
                                .frame(minWidth:200,minHeight:200)
                        }
                    }
                    TimeLineView()
                        .frame(minWidth:200,minHeight:200)
                    
                }
                CodeWindowView()
                    .frame(width:200,height:300)
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
