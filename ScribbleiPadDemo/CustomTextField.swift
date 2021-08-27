//
//  CustomTextField.swift
//  CustomTextField
//
//  Created by Erik Flores on 26/8/21.
//

import SwiftUI

struct CustomTextField: UIViewRepresentable {
    typealias UIViewType = UICustomTextField
    let textField: UICustomTextField

    init(textField: UICustomTextField) {
        self.textField = textField
    }

    func makeUIView(context: Context) -> UICustomTextField {
        return textField
    }

    func updateUIView(_ uiView: UICustomTextField, context: Context) {

    }
}
//
//struct CustomTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomTextField()
//    }
//}
