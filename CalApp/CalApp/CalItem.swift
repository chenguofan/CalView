//
//  CalItem.swift
//  CalApp
//
//  Created by suhengxian on 2022/1/18.
//

import Foundation
import SwiftUI

enum CalItem {
    enum Mark:String {
        case divide = "/"
        case add = "+"
        case reduce = "-"
        case multiple = "*"
    }
    
    enum Command:String {
        case clear = "AC"
        case or = "+/-"
        case percent = "%"
        case equal = "="
    }
    
    case digit(Int)
    case mark(Mark)
    case dot
    case command(Command)
}

extension CalItem:Hashable{
    //扩展添加一个变量
    var title:String{
        switch self{
            case .digit(let value):return String(value)
            case .mark(let mark):return mark.rawValue
            case .command(let command):return command.rawValue
            case .dot :return "."
        }
    }
    var size:CGSize{
        if case .digit(let value) = self,value == 0{
            return CGSize(width: 88 * 2 + 8, height: 88)
        }
        return CGSize(width: 88, height: 88)
    }
}
