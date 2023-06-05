//
//  ContentView.swift
//  MoneyGrow
//
//  Created by sara ayed albogami on 08/11/1444 AH.
//

import SwiftUI

struct InvestingPage: View {
    @State private var FirstChoice: DropdownMenuOption1? = nil
    @State private var SecondChoice: DropdownMenuOption1? = nil


    
    
    @State private var isshowresults = false
    
    var body: some View {
        
        NavigationView {
       
            ZStack{
               
                
                VStack( spacing: 20) {
                    
                    VStack(alignment: .center){
                        Text("Let us know more")
                            .font(.custom("Barlow ", size: 34))
                            .foregroundColor(Color(#colorLiteral(red: 0.36, green: 0.46, blue: 0.91, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .padding(.all)
                        
                        Text("Help us suggest what suits you for \na better investment ")
                            .font(.custom("Barlow Medium", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.27, blue: 0.54, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .padding(.top,-20)
                            .lineLimit(2)
                    }.padding(.bottom,40)
                  
//                    Text("What are your investment goals?")
//                        .font(Font.custom("SF Pro", size: 18))
//                        .padding(.leading , 15)
//                        .padding(.bottom,-10)
//                        .foregroundColor(.black)
                    Text("What are your investment goals?")
                        .font(.custom("Barlow ", size: 19))
                        .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.27, blue: 0.54, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .padding(.bottom,-20)
                    DropdownMenu(
                        selectedOption: self.$FirstChoice,
                        placeholder: "select",
                        options: DropdownMenuOption1.testAllChoices
                    )
                    
                    Text("What are your investment horizons?")
                        .font(.custom("Barlow Medium", size: 19))
                        .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.27, blue: 0.54, alpha: 1)))
                        .multilineTextAlignment(.center)
//                        .padding(.top,20)
                        .padding(.bottom,-20)
                    
                    DropdownMenu(
                        selectedOption: self.$SecondChoice,
                        placeholder: "select",
                        options: DropdownMenuOption1.testAllChoices2
                    )
                    
                    Spacer()
                    
                    HStack(alignment: .top){
                        
                        Button{isshowresults.toggle()
                            
//                            RecommendationsPage(First: $FirstChoice)
                            
                        }
                        
                    label: {
                        Text("Show me the results")
                            .font(.custom("Barlow Medium", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                    }
                    .padding(.all)
                    .frame(width: 273, height: 62)
                    .background(LinearGradient(
                        gradient: Gradient(stops: [
                    .init(color: Color(#colorLiteral(red: 0.6352941393852234, green: 0.843137264251709, blue: 0.6941176652908325, alpha: 1)), location: 0),
                    .init(color: Color(#colorLiteral(red: 0.27450981736183167, green: 0.364705890417099, blue: 0.8980392217636108, alpha: 1)), location: 1)]),
                        startPoint: UnitPoint(x: 0.04246575376670733, y: 0.9999998511313493),
                        endPoint: UnitPoint(x: 0.9999999964329068, y: 0.9999998511313493)))
                    .cornerRadius(10)
                    .padding(.horizontal, 50)
//
//                    .fullScreenCover(isPresented: $isshowresults){
//
////                        RecommendationsPage(First: $FirstChoice)
//                    }
                        
                    }.padding(.bottom,20)
                
                }
                
            }
           // .navigationBarTitle("Investing")
            // .navigationBarTitleDisplayMode(.inline)
            .ignoresSafeArea(.all)
            .padding(.all)
            .padding(.top,20)
          //  .background(Color("BackgroundColor"))
            
        }
        
    }
}

struct InvestingPage_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            
            InvestingPage()
                .environment(\.locale, .init(identifier: "en"))
            
            
            InvestingPage()
                .environment(\.locale, .init(identifier: "ar"))
        }
    }
}
