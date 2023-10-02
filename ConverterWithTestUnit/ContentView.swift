//
//  ContentView.swift
//  ConverterWithTestUnit
//
//  Created by Anne Victoria Batista Auzier on 02/10/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ConvertersViewModel()

    var body: some View {
        Form {
            VStack(spacing: 25) {
                Text("\(vm.convertedText)")
                    .bold()
    
                TextField("Enter", text: $vm.text)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)
                    .submitLabel(.done)

                Button("Converter") {
                    self.vm.convertMoney()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
