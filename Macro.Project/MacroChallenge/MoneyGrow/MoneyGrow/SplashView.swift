//
//  SplashView.swift
//  MoneyGrow
//
//  Created by sara ayed albogami on 16/11/1444 AH.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive : Bool = false
    
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
 
        if isActive
        {
            InvestingPage()
        }
        else{
            VStack{
                VStack{
                    Text("Invest your money\nGrow your future")
                        .font(.custom("Barlow Bold", size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(Color(#colorLiteral(red: 0.36, green: 0.46, blue: 0.91, alpha: 1)))
                        .multilineTextAlignment(.center)
                    //                .padding(.all)
                        .padding(.top,80)
                        .padding(.bottom,-70)
                    
                    ZStack {
                        
                        Ellipse()
                            .fill(LinearGradient(
                                gradient: Gradient(stops: [
                                    .init(color: Color(#colorLiteral(red: 0.6352941393852234, green: 0.843137264251709, blue: 0.6980392336845398, alpha: 1)), location: 0),
                                    .init(color: Color(#colorLiteral(red: 0.35686275362968445, green: 0.4627451002597809, blue: 0.9098039269447327, alpha: 1)), location: 1)]),
                                startPoint: UnitPoint(x: 0.896866831241945, y: 0.589474059991133),
                                endPoint: UnitPoint(x: 0.03002611956187179, y: 0.6447371887349291)))
                            .frame(width: 282.3, height: 283.7)
                            .rotationEffect(.degrees(-68.43))
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: 4, x: 0, y: 4)
                            .position(x:90 , y:350)
                        //Ellipse 198
                        Ellipse()
                            .strokeBorder(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1)
                            .frame(width: 230, height: 226)
                            .position(x:90 , y:350)
                        
                        VStack{
                            //Ellipse 199
                            Ellipse()
                                .fill(Color(#colorLiteral(red: 0.35686275362968445, green: 0.4627451002597809, blue: 0.9098039269447327, alpha: 1)))
                                .frame(width: 169, height: 161)
                                .rotationEffect(.degrees(150.42))
                                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                                .position(x:1 , y:250)
                            //                    HStack{
                            //
                            //                        Image("logo.")
                            //                            .resizable()
                            //
                            //
                            //                    }
                        }
                        
                    }
                    
//                    HStack{
//                        Spacer()
//                        Button{
//                            isActive.toggle()
//
//                        } label: {
//                            Image(systemName: "arrow.forward")
//                                .font(.custom("Barlow ", size: 34))
//
//                        }
//                        .fontWeight(.bold)
//                        .font(Font.custom("SF Pro", size: 20))
//                        .foregroundColor(Color("ButtonColor"))
//                        .padding(20)
//
//                    }
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            } .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}


struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}


