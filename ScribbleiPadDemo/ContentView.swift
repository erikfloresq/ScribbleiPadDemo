//
//  ContentView.swift
//  ScribbleiPadDemo
//
//  Created by Erik Flores on 26/8/21.
//

import SwiftUI

struct ContentView: View {
    @State var inputText: String = ""
    let textField = UICustomTextField(customPlaceholder: "Add CustomTextField")

    var body: some View {
        VStack(alignment: .center, spacing: 10) {
                CustomTextField(textField: textField)
                .frame(height: 60)
                .border(.gray, width: 1)
            TextField("Add your demo text in TextField", text: $inputText)
                .multilineTextAlignment(.center)
                .frame(height: 60)
                .border(.gray, width: 1)
            CustomView(customTextField: textField)
                .border(.gray, width: 1)
        }.padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
