//
//  Converters.swift
//  ConverterWithTestUnit
//
//  Created by Anne Victoria Batista Auzier on 02/10/23.
//

import SwiftUI

struct Converters {
    func convertRealToUSD(value real: String) -> String {
        let usdRate = 0.20
        let realValue = Double(real) ?? 0
        
        if realValue <= 0 {
            return "Please, insert a valid value."
        }

        if realValue >= 1_000_000 {
            return "This value is too big to be converted."
        }
        
        return String("$\(String(format: "%0.2f", realValue * usdRate))")
    }
}
