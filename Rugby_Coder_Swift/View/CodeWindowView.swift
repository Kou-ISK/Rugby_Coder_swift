//
//  CodeWindowView.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/06.
//

import SwiftUI

struct CodeWindowView: View {
//    @State var timelineData:TimelineData?
    @State var passButtonPushed:Bool = false
    @State var tackleButtonPushed:Bool = false
    @State var tackleData:TimelineData?
    @State var passData:TimelineData?
    var body: some View {
        VStack{
            Button("Pass"){
                if(passButtonPushed){
                    endAction(timelineData: passData!)
                }else{
                    passData = startAction(actionName:"Pass")
                }
                passButtonPushed.toggle()
            }
            Button("Tackle"){
                if(tackleButtonPushed){
                    endAction(timelineData: tackleData!)
                }else{
                    tackleData = startAction(actionName:"Tackle")
                }
                tackleButtonPushed.toggle()
            }
            Button("Button3"){
            }
            Button("Button4"){
            }
        }
    }
}

struct CodeWindowView_Previews: PreviewProvider {
    static var previews: some View {
        CodeWindowView()
    }
}
