//
//  SelectCurrencyView.swift
//  LOTR Converter
//
//  Created by Jakob Hjortshøj on 08/07/2022.
//

import SwiftUI

struct SelectCurrencyView: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var leftCurrency: Currency
    @Binding var rightCurrency: Currency
    @State var gridLayout = [GridItem(), GridItem(), GridItem()]
    var body: some View {
        ZStack{
            Image("parchment")
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                Text("Select the currency your are starting with:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // currency icons
                LazyVGrid(columns: gridLayout) {
                    ForEach(0..<5) { i in
                        if Currency.allCases[i] == leftCurrency {
                            CurrencyIcon(currencyImage: CurrencyImage.allCases[i].rawValue, currencyText: CurrencyText.allCases[i].rawValue)
                                .overlay(RoundedRectangle(cornerRadius: 25)
                                    .stroke(lineWidth: 3)
                                    .opacity(0.5))
                                .shadow(color: .black, radius: 9)
                        }
                        else {
                            CurrencyIcon(currencyImage: CurrencyImage.allCases[i].rawValue, currencyText: CurrencyText.allCases[i].rawValue)
                        }
                    }
                }
                
                //Text
                Text("Select the currency yoyu would like to conver to:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
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
        }
    }
}

struct SelectCurrencyView_Previews: PreviewProvider {
    static var previews: some View {
        SelectCurrencyView(leftCurrency: .constant(.silverPiece), rightCurrency: .constant(.goldPiece))
    }
}
