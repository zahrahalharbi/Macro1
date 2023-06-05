//
//  ContentView.swift
//  MoneyGrow
//
//  Created by sara ayed albogami on 09/11/1444 AH.
//

import SwiftUI


struct ContentView: View {
  
    var body: some View {
        
                    InvestingPage()
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        
            ContentView()
                .environment(\.locale, .init(identifier: "en"))
          
            ContentView()
                .environment(\.locale, .init(identifier: "ar"))
        }
    }
}

