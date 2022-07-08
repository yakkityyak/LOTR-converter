//
//  ExchangeInfo.swift
//  LOTR Converter
//
//  Created by Jakob Hjortshøj on 08/07/2022.
//

import SwiftUI

struct ExchangeInfoView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
            ZStack {
                Image("parchment")
                    .resizable()
                    .ignoresSafeArea()
                    .background(.brown)
                
                VStack( spacing: 13){
                    Text("Exchange Rates")
                        .font(.largeTitle)
                    
                    Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world,except one. We used to take Brandu Bucks but after finding out that is was a person instead of a piece of paper, we realized it had no value to s. Below is a simple guide to our currency exchange rates:")
                        .padding()
                        .lineSpacing(3)
                        .font(.title2)
                    
                    HStack{
                        ExchangeRate(leftImage: "goldpiece", text: "1 Gold Piece = 4 Gold Pieces", rightImage: "goldpenny")
                    }
                    HStack{
                        ExchangeRate(leftImage: "goldpenny", text: "1 Gold Penny = 4 Silver Pieces", rightImage: "silverpiece")
                    }
                    HStack{
                        ExchangeRate(leftImage: "silverpiece", text: "1 Silver Piece = 4 Silver Pennies", rightImage: "silverpenny")
                    }
                    HStack{
                        ExchangeRate(leftImage: "silverpenny", text: "1 Silver Penny = 100 Copper Pennie", rightImage: "copperpenny")
                    }
                    Button {
                        dismiss()
                    } label: {
                        Text("Done")
                    }
                    .padding(8)
                    .font(.system(size: 27, weight: .light))
                    .foregroundColor(.white)
                    .background(.brown.opacity(0.9))
                    .cornerRadius(15)
            }
                .foregroundColor(.black)
        }
        
    }
}

struct ExchangeInfo_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeInfoView()
            .preferredColorScheme(.dark)
    }
}
