//
//  CodeWindowView.swift
//  Rugby_Coder_Swift
//
//  Created by 井坂航 on 2022/12/06.
//

import SwiftUI

struct CodeWindowView: View {
    var body: some View {
        VStack{
            Button("Button1"){
                setActionStartTime()
            }
            Button("Button2"){
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
