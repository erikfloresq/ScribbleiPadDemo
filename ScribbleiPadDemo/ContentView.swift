//
//  ContentView.swift
//  ScribbleiPadDemo
//
//  Created by Erik Flores on 26/8/21.
//

import SwiftUI

struct ContentView: View {
    @State var inputText: String = ""

    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            CustomTextField(placeholder: "Add your demo text in CustomTextField")
                .frame(height: 60)
                .border(.gray, width: 1)
            TextField("Add your demo text in TextField", text: $inputText)
                .multilineTextAlignment(.center)
                .frame(height: 60)
                .border(.gray, width: 1)
            CustomView()
                .border(.gray, width: 1)
        }.padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
