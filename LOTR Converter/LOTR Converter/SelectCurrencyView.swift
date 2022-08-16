//
//  SelectCurrencyView.swift
//  LOTR Converter
//
//  Created by Jakob Hjortshøj on 08/07/2022.
//

import SwiftUI

struct SelectCurrencyView: View {
    
    @Environment(\.dismiss) var dismiss
    
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
                
                CurrencyIcon(currencyImage: "goldpenny", currencyText: "Gold Penny")
                
                
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
        SelectCurrencyView()
    }
}
