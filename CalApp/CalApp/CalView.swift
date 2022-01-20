//
//  CalView.swift
//  CalApp
//
//  Created by suhengxian on 2022/1/18.
//

import SwiftUI

struct CalView: View {
    let list:[[CalItem]] = [[.command(.clear),.command(.or),.command(.percent),.mark(.divide)],
                            [.digit(7),.digit(8),.digit(9),.mark(.multiple)],
                            [.digit(4),.digit(5),.digit(6),.mark(.reduce)],
                            [.digit(1),.digit(2),.digit(3),.mark(.add)],
                            [.digit(0),.dot,.command(.equal)]
        ]
    
    var body: some View {
        VStack{
            ForEach(list,id:\.self){row in
                CalRow.init(row: row)
            }
        }
       
    }
}

struct CalView_Previews: PreviewProvider {
    static var previews: some View {
        CalView()
    }
}
