//
//  DropdownMenu.swift
//  MoneyGrow
//
//  Created by sara ayed albogami on 08/11/1444 AH.
//


import SwiftUI

struct DropdownMenu: View {
   
    @State private var isOptionsPresented: Bool = false
    
   
    @Binding var selectedOption: DropdownMenuOption1?
//    @Binding var selectedOption2: DropdownMenuOption1?


    let placeholder: String
    
   
    let options: [DropdownMenuOption1]
  
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isOptionsPresented.toggle()
            }
        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .frame(width: 328, height: 74)
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.20999999344348907)), radius:2, x:0, y:2)
                VStack(alignment: .leading){
                    Text(selectedOption == nil ? placeholder : selectedOption!.option)
                        .fontWeight(.medium)
                        .foregroundColor(selectedOption == nil ? .gray : Color(#colorLiteral(red: 0.17, green: 0.27, blue: 0.54, alpha: 1)))
                        .lineLimit(2)
                }
             //   Spacer()
                HStack(alignment: .center){
                    Spacer()
                    
                    Image(systemName: self.isOptionsPresented ? "chevron.up" : "chevron.down")
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                        .padding(.leading,-40)
                }
               
            }
        }
        .padding(.all,15)
      
        .overlay {
//            RoundedRectangle(cornerRadius: 10)
//                .stroke(.gray, lineWidth: 2)
              
        }
        .overlay(alignment: .top) {
            VStack(alignment: .leading) {
                if self.isOptionsPresented {
                    Spacer(minLength: 100)
                    DropdownMenuList(options: self.options) { option in
                        self.isOptionsPresented = false
                        self.selectedOption = option
                    }
                }
            }
        }
      
        .padding(.horizontal)
     
        .padding(
            
            .bottom, self.isOptionsPresented
         
            ? CGFloat(self.options.count * 40) > 400
           
                ? 400
                : CGFloat(self.options.count * 40) + 30
        
            : 0
        )
      
    }
}

struct DropdownMenu_Previews: PreviewProvider {
    static var previews: some View {
        DropdownMenu(
            selectedOption: .constant(nil),
            placeholder: "Select",
            options: DropdownMenuOption1.testAllChoices
        )
       
    }
}
