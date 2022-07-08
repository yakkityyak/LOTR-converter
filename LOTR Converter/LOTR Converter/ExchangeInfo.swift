//
//  ExchangeInfo.swift
//  LOTR Converter
//
//  Created by Jakob Hjortshøj on 08/07/2022.
//

import SwiftUI

struct ExchangeInfo: View {
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
                        .foregroundColor(.black.opacity(0.7))
                    
                    HStack{
                        Image("goldpiece")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 33)
                        Text("1 Gold Piece")
                            .foregroundColor(.black.opacity(0.8))
                        
                        Image(systemName: "equal")
                    
                        
                        Text("4 Gold Pennies")
                            .foregroundColor(.black.opacity(0.8))
                        
                        Image("goldpenny")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 33)
                    }
                    HStack{
                        Image("goldpenny")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 33)
                        Text("1 Gold Penny")
                            .foregroundColor(.black.opacity(0.8))
                        
                        Image(systemName: "equal")
                            
                        
                        Text("4 Silver Pieces")
                            .foregroundColor(.black.opacity(0.8))
                        
                        Image("silverpiece")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 33)
                        
                    }
                    HStack{
                        Image("silverpiece")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 33)
                        Text("1 Silver Piece")
                            .foregroundColor(.black.opacity(0.8))
                        
                        Image(systemName: "equal")
                          
                        
                        Text("4 Silver Pennies")
                            .foregroundColor(.black.opacity(0.8))
                        
                        Image("silverpenny")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 33)
                        
                    }
                    HStack{
                        Image("silverpenny")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 33)
                        Text("1 Silver Penny")
                            .foregroundColor(.black.opacity(0.8))
                        
                        Image(systemName: "equal")
                           
                        
                        Text("100 Copper Pennies")
                            .foregroundColor(.black.opacity(0.8))
                        
                        Image("copperpenny")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 33)
                        
                    }
                    Button {
                        
                    } label: {
                        Text("Done")
                    }
                    .padding(8)
                    .font(.system(size: 27, weight: .light))
                    .foregroundColor(Color(UIColor.systemGray5))
                    .background(.brown.opacity(0.9))
                    .cornerRadius(10)

                        
            }
        }
        
    }
}

struct ExchangeInfo_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeInfo()
    }
}
