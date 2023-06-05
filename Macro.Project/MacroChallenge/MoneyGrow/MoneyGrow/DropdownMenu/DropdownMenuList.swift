//
//  DropdownMenuList.swift
//  MoneyGrow
//
//  Created by sara ayed albogami on 08/11/1444 AH.
//


import SwiftUI

struct DropdownMenuList: View {

    let options: [DropdownMenuOption1]
    
  
    let onSelectedAction: (_ option: DropdownMenuOption1) -> Void
    
    var body: some View {
       // ScrollView {
            
            ZStack() {
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .frame(width: 328, height: 100)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.20999999344348907)), radius:2, x:0, y:2)
                VStack(alignment: .leading) {
                    ForEach(options) { option in
                        DropdownMenuListRow(option: option, onSelectedAction: self.onSelectedAction)
                        
                    }.padding(.leading,20)
                }}
       // }
      
        .frame(height: CGFloat(self.options.count * 36) > 300
               ? 300
               : CGFloat(self.options.count * 36)
        )
//       .background(Color(uiColor: .white))
//        .opacity(100)
        
        .padding(.vertical)
//        .overlay {
//            RoundedRectangle(cornerRadius: 5)
//                .stroke(.gray, lineWidth: 2)
//                .frame(width: 328, height: 74)
//
//        }
//        .background(.white)
        
    }
}

struct DropdownMenuList_Previews: PreviewProvider {
    static var previews: some View {
        DropdownMenuList(options: DropdownMenuOption1.testAllChoices, onSelectedAction: { _ in })
            .padding(.horizontal)
    }
}

