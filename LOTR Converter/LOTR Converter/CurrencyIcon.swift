//
//  CurrencyIcon.swift
//  LOTR Converter
//
//  Created by Jakob Hjortshøj on 16/08/2022.
//

import SwiftUI

struct CurrencyIcon: View {
    
    @State var currencyImage: String
    @State var currencyText: String
    
    var body: some View {
        ZStack {
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            VStack {
                Spacer()
                
                Text(currencyText)
                    .padding(3)
                    .font(.caption)
                    .background(.brown.opacity(0.75))
            }
            
        }
        .padding(3)
        .frame(width: 100, height: 100)
        .background(.brown)
        .cornerRadius(25)
    }
}

struct CurrencyIcon_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyIcon(currencyImage: "goldpenny", currencyText: "Gold Oenny")
            .previewLayout(.sizeThatFits)
    }
}
