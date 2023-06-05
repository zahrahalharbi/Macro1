//
//  RecommendationList.swift
//  MoneyGrow
//
//  Created by sara ayed albogami on 15/11/1444 AH.
//

import Foundation


struct RecommendationList: Identifiable, Codable {
 
    var id = UUID()
    let ComName : String
    let ComDetails: String
}

class recommendationlist: ObservableObject{
    
    @Published var AdditionalincomeAndShortTerm : [RecommendationList] = [
        .init(ComName: "Stocks", ComDetails: "It is possible to invest in stocks in the short term to increase income, but this requires carefully studying and analyzing stocks and following an appropriate investment strategy. Investing in stocks must be balanced and diversified to reduce risks."),
        .init(ComName: "Gold", ComDetails: "It is possible to invest in gold in the short term to increase income, but this requires carefully studying and analyzing the gold market and following an appropriate investment strategy."),
        .init(ComName: "Bank Returns", ComDetails: "Investing in bank deposits in the short term is a suitable option for investors who want to achieve stable and guaranteed income in a short period. Bank deposits are among the safest financial instruments and provide stable and guaranteed returns."),
        .init(ComName: "Government Bonds", ComDetails: "Government bonds can be invested in the near term to increase income, as government bonds provide fixed and guaranteed returns and are considered one of the safest financial instruments. Government bonds are considered a loan that the investor gives to the government, and government bonds include various time periods during which fixed interest is paid regularly.")
    ]
    
    
    @Published var AdditionalincomeAndLongTerm : [RecommendationList] = [
        .init(ComName: "Stock", ComDetails: "are one of the most popular investment assets that can generate high returns in the long run, and allow investors to benefit from the growth of the economy and companies."),
        .init(ComName: "Real estate", ComDetails: "are one of the most popular investment assets that can generate high returns in the long run, and allow investors to benefit from the growth of the economy and companies."),
        .init(ComName: "Investment Funds", ComDetails: "It allows investors to invest in a variety of investment assets without the need to purchase each of them separately, and it allows investors to access a diversified portfolio of assets that can reduce the risks associated with market fluctuations.")
    ]
    
    @Published var achievingCertainGoalsAndShortTerm : [RecommendationList] = [
        .init(ComName: "Fixed Deposits", ComDetails: "They allow investors to obtain fixed and stable returns in the near term, and are an ideal way to preserve capital."),
        .init(ComName: "ETFs", ComDetails: "They allow investors to invest in a variety of investment assets and achieve near-term returns, profits can be made by selling the fund when its value rises."),
        .init(ComName: "Stocks", ComDetails: "Investors can get high returns when the value of the stock rises, and shares can be sold in the future for near-term profits.")
    ]
    
    @Published var achievingCertainGoalsAndLongTerm : [RecommendationList] = [
        .init(ComName: "Islamic Sukuk", ComDetails: "Islamic sukuk can be invested in the long term to achieve specific goals, as Islamic sukuk is an increasingly popular investment tool in the world and provides an opportunity for investors to achieve desired returns while at the same time adhering to Islamic principles."),
        .init(ComName: "Government bonds", ComDetails: "TGovernment bonds can be invested in the long term to achieve specific goals, as government bonds are one of the most secure and secure financial instruments and provide a stable and stable long-term return."),
        .init(ComName: "Real Estate", ComDetails: "Real estate can be invested in the long term to achieve specific goals, as real estate is one of the most stable and reliable assets in long-term investment.")
    ]
    
    
}

//
//var AdditionalincomeAndLongTermS = RecommendationList(ComName: "Stock", ComDetails: "are one of the most popular investment assets that can generate high returns in the long run, and allow investors to benefit from the growth of the economy and companies.", tag: 11)
//
//var AdditionalincomeAndLongTermR = RecommendationList(ComName: "Real estate", ComDetails: "are one of the most popular investment assets that can generate high returns in the long run, and allow investors to benefit from the growth of the economy and companies.")
//
//var AdditionalincomeAndLongTermF = RecommendationList(ComName: "Investment Funds", ComDetails: "It allows investors to invest in a variety of investment assets without the need to purchase each of them separately, and it allows investors to access a diversified portfolio of assets that can reduce the risks associated with market fluctuations.")
//
//
//var AdditionalincomeAndShortTermS = RecommendationList(ComName: "Stocks", ComDetails: "It is possible to invest in stocks in the short term to increase income, but this requires carefully studying and analyzing stocks and following an appropriate investment strategy. Investing in stocks must be balanced and diversified to reduce risks.")
//
//var AdditionalincomeAndShortTermG = RecommendationList(ComName: "Gold", ComDetails: "It is possible to invest in gold in the short term to increase income, but this requires carefully studying and analyzing the gold market and following an appropriate investment strategy.")
//
//var AdditionalincomeAndShortTermB = RecommendationList(ComName: "bank returns", ComDetails: "Investing in bank deposits in the short term is a suitable option for investors who want to achieve stable and guaranteed income in a short period. Bank deposits are among the safest financial instruments and provide stable and guaranteed returns.")
//
//var AdditionalincomeAndShortTermGB = RecommendationList(ComName: "Government bonds", ComDetails: "Government bonds can be invested in the near term to increase income, as government bonds provide fixed and guaranteed returns and are considered one of the safest financial instruments. Government bonds are considered a loan that the investor gives to the government, and government bonds include various time periods during which fixed interest is paid regularly.")
//
//
//var achievingCertainGoalsAndShortTermFD = RecommendationList(ComName: "Fixed deposits", ComDetails: "They allow investors to obtain fixed and stable returns in the near term, and are an ideal way to preserve capital.")
//
//var achievingCertainGoalsAndShortTermETFs = RecommendationList(ComName: "ETFs", ComDetails: "They allow investors to invest in a variety of investment assets and achieve near-term returns, profits can be made by selling the fund when its value rises.")
//
//var achievingCertainGoalsAndShortTermS = RecommendationList(ComName: "Stocks", ComDetails: "Investors can get high returns when the value of the stock rises, and shares can be sold in the future for near-term profits.")
//
//var achievingCertainGoalsAndLongTerm = RecommendationList(ComName: "Investment Funds", ComDetails: "It allows investors to invest in a variety of investment assets without the need to purchase each of them separately, and it allows investors to access a diversified portfolio of assets that can reduce the risks associated with market fluctuations.")
//
//var achievingCertainGoalsAndLongTermIS = RecommendationList(ComName: "Islamic Sukuk", ComDetails: "Islamic sukuk can be invested in the long term to achieve specific goals, as Islamic sukuk is an increasingly popular investment tool in the world and provides an opportunity for investors to achieve desired returns while at the same time adhering to Islamic principles.")
//
//var achievingCertainGoalsAndLongTermGB = RecommendationList(ComName: "Government bonds", ComDetails: "Government bonds can be invested in the long term to achieve specific goals, as government bonds are one of the most secure and secure financial instruments and provide a stable and stable long-term return.")
//
//var achievingCertainGoalsAndLongTermRS = RecommendationList(ComName: "Real estate", ComDetails: "Real estate can be invested in the long term to achieve specific goals, as real estate is one of the most stable and reliable assets in long-term investment.")
//
//
//
