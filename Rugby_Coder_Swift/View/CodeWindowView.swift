//
//  CodeWindowView.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/06.
//

import SwiftUI

struct CodeWindowView: View {
    @State var timelineData:TimelineData?
    var body: some View {
        VStack{
            Button("Button1"){
                self.timelineData = setActionStartTime()
            }
            Button("Button2"){
                setAction(timelineData: (timelineData)!)
            }
            Button("Button3"){
                self.timelineData?.endTime = "end time"
            }
            Button("Button4"){
                print(timelineData?.startTime)
            }
        }
    }
}

struct CodeWindowView_Previews: PreviewProvider {
    static var previews: some View {
        CodeWindowView()
    }
}
