//
//  DropdownMenuListRow.swift
//  MoneyGrow
//
//  Created by sara ayed albogami on 08/11/1444 AH.
//


import SwiftUI

struct DropdownMenuListRow: View {
    let option: DropdownMenuOption1
    
   
    let onSelectedAction: (_ option: DropdownMenuOption1) -> Void
    
    var body: some View {
        Button(action: {
            self.onSelectedAction(option)
        }) {
            Text(option.option)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .font(.custom("Barlow Medium", size: 16))
        .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.27, blue: 0.54, alpha: 1)))

        .multilineTextAlignment(.trailing)
        .padding(.vertical, 5)
        .padding(.horizontal)
    }
}

struct DropdownMenuListRow_Previews: PreviewProvider {
    static var previews: some View {
        DropdownMenuListRow(option: DropdownMenuOption1.testSingleChoice, onSelectedAction: { _ in })
    }
}
