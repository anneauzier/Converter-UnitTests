//
//  ConvertersViewModel.swift
//  ConverterWithTestUnit
//
//  Created by Anne Victoria Batista Auzier on 02/10/23.
//

import SwiftUI

class ConvertersViewModel: ObservableObject {
    @Published var text: String = ""
    @Published var convertedText: String = "$0"
    
    private let convert = Converters()
    
    func convertMoney() {
        self.convertedText = convert.convertRealToUSD(value: text)
    }
}
