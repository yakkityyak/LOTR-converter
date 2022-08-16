//
//  Currency.swift
//  LOTR Converter
//
//  Created by Jakob Hjortshøj on 16/08/2022.
//

enum Currency: Double, CaseIterable {
    case copperPenny = 640
    case silverPenny = 64
    case silverPiece = 16
    case goldPenny = 4
    case goldPiece = 1
}

enum CurrencyText: String, CaseIterable {
    case copperPenny = "Copper Penny"
    case silverPenny = "Silver penny"
    case silverPiece = "Silver Piece"
    case goldPenny = "Gold Penny"
    case goldPiece = "Gold Piece"
}

enum CurrencyImage: String, CaseIterable {
    case copperPenny = "copperPenny"
    case silverPenny = "silverPenny"
    case silverPiece = "silverPiece"
    case goldPenny = "goldPenny"
    case goldPiece = "goldPiece"
}
