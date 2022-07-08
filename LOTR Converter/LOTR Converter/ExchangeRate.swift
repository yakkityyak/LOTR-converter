//
//  ExchangeRate.swift
//  LOTR Converter
//
//  Created by Jakob Hjortshøj on 08/07/2022.
//

import SwiftUI

struct ExchangeRate: View {
    
    @State var leftImage: String
    @State var text: String
    @State var rightImage: String
    
    
    var body: some View {
        HStack{
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            Text(text)
                .foregroundColor(.black.opacity(0.8))
            
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

struct ExchangeRate_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeRate(leftImage: "goldpenny", text: "1 Gold Penny = 4 Silver Pieces", rightImage: "silverpiece")
            .previewLayout(.sizeThatFits)
    }
}
