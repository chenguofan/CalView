//
//  CalRow.swift
//  CalApp
//
//  Created by suhengxian on 2022/1/18.
//

import SwiftUI

struct CalRow: View {
    let row:[CalItem]
    var body: some View {
        HStack{
            ForEach(row,id:\.self){item in
                CalBtn.init(size: item.size, title: item.title) {
                    
                }
            }
        }
    }
}

struct CalRow_Previews: PreviewProvider {
    static var previews: some View {
        CalRow.init(row: [.digit(1)])
    }
}
