//
//  CusBtn.swift
//  CalApp
//
//  Created by suhengxian on 2022/1/18.
//

import SwiftUI

struct CalBtn: View {
    let font:CGFloat = 38.0
    
    let size:CGSize
    let title:String
    let ation:()->Void
    
    var body: some View {
        Button {
            print("title:\(title)")
        } label: {
            Text(title)
                .font(.system(size: font))
                .frame(width: size.width, height: size.height, alignment: .center)
                .foregroundColor(.white)
                .background(.yellow)
                .cornerRadius(size.width/2.0)
        }
    }
}

struct CalBtn_Previews: PreviewProvider {
    static var previews: some View {
        CalBtn.init(size: CGSize(width: 88, height: 88), title: "1") {
            
        }
    }
}
