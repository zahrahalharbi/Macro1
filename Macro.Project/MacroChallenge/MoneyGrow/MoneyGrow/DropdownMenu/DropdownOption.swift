//
//  DropdownOption.swift
//  MoneyGrow
//
//  Created by sara ayed albogami on 08/11/1444 AH.
//
import Foundation


struct DropdownMenuOption1: Identifiable, Hashable {
    let id = UUID().uuidString
    let option: String
//    let tag : Int
}

extension DropdownMenuOption1 {
    static let testSingleChoice: DropdownMenuOption1 = DropdownMenuOption1(option: "Additional income and capital increase ")
    static let testAllChoices: [DropdownMenuOption1] = [
        DropdownMenuOption1(option: NSLocalizedString("Additional income and capital increase ",comment: "")),
        DropdownMenuOption1(option: NSLocalizedString("Achieving certain goals",comment: "")),
       
    ]
    
}


extension DropdownMenuOption1 {
    static let testSingleChoice2: DropdownMenuOption1 = DropdownMenuOption1(option: "long term")
    static let testAllChoices2: [DropdownMenuOption1] = [
        DropdownMenuOption1(option: NSLocalizedString("Long term",comment: "")),
        DropdownMenuOption1(option: NSLocalizedString("Short term",comment: ""))
    ]
    
}
