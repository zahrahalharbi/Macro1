//
//  RecommendationsPage.swift
//  MoneyGrow
//
//  Created by sara ayed albogami on 15/11/1444 AH.
//

import SwiftUI

struct RecommendationsPage: View {
    
//    var RecList : RecommendationList
    @StateObject var RecList = recommendationlist()
    
      @Binding var First: String
   // @State var Second : String
//
    var body: some View {
        
        NavigationView {
            
            ZStack{
                
                VStack{
                    
                    Text("Suggestions").font(.custom("Barlow SemiBold", size: 37)).foregroundColor(Color(#colorLiteral(red: 0.36, green: 0.46, blue: 0.91, alpha: 1))).multilineTextAlignment(.center)
                        .padding(.bottom,40)
                    Text("The right type of investment for you based on your answers").font(.custom("Barlow Medium", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.27, blue: 0.54, alpha: 1))).multilineTextAlignment(.center)
                        .padding(.top,-30)
                        .padding(.bottom, 30)
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 356, height: 72)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:2, x:0, y:2)
                     
//                        ForEach()
                        
                        Text("").font(.custom("Barlow Medium", size: 19)).foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.27, blue: 0.54, alpha: 1))).multilineTextAlignment(.trailing)
                        
                    }
                        
                    
                    
                    
                    Spacer()
                }
            }
     
          //  .navigationBarTitle("Our recommendations")
            .ignoresSafeArea(.all)
            .padding(.all)
            .padding(.top,20)
            //.background(Color("BackgroundColor"))
        
        }
    }
}
//
//struct ContactRow: View {
//    @State var lists : RecommendationList
//
//    var body: some View {
//
//        HStack {
//            Image(lists.ComName)
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .frame(width: 70, height: 70)
//                .clipped()
//                .cornerRadius(50)
//            VStack(alignment: .leading) {
//                Text(lists.ComDetails)
//                    .font(.system(size: 18, weight: .medium, design: .default))
//
//            }
//        }.padding()
//    }
//}

struct RecommendationsPage_Previews: PreviewProvider {
    static var previews: some View {
        RecommendationsPage(First: .constant(""))
    }
}
