//
//  ContentView.swift
//  CalApp
//
//  Created by suhengxian on 2022/1/18.
//

import SwiftUI

struct ContentView: View {
    
    let title = "hello"
    let fontSize:CGFloat = 30
    let size:CGSize = CGSize(width: 100, height:100)
    let action:()->Void
    
    var body: some View {
        VStack(spacing: 12) {
            Spacer()
            Text("0").font(.system(size: 76))
                .minimumScaleFactor(0.5)
                .padding(.trailing,24)
                .lineLimit(1)
                .frame(minWidth: 0,maxWidth: .infinity,alignment: .trailing)
            CalView().padding(.bottom)
        }
        
//        Button {
//            print("hello world")
//        } label: {
//            Text(title)
//            .font(.system(size: fontSize))
//            .foregroundColor(.white)
//            .frame(width: size.width, height: size.height)
//            .cornerRadius(size.width / 2)
//            .background(Color.red)
//        }

//        Button {
//            print("hello world")
//        } label: {
//            Text(title)
//            .foregroundColor(.white)
//            .font(.system(size: fontSize))
//            .frame(width: size.width, height: size.height)
//            .background(Color.red)
//            .cornerRadius(size.width / 2)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView {
            
        }
    }
    
}
