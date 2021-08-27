//
//  UICustomTextField.swift
//  UICustomTextField
//
//  Created by Erik Flores on 26/8/21.
//

import UIKit

class UICustomTextField: UITextField {
    var scribbleInteraction: UIScribbleInteraction!
    let customPlaceholder: String

    init(customPlaceholder: String) {
        self.customPlaceholder = customPlaceholder
        super.init(frame: .zero)
        placeholder = customPlaceholder
        scribbleInteraction = UIScribbleInteraction(delegate: self)
        addInteraction(scribbleInteraction)
        accessibilityIdentifier = "CustomTextIdentifier"
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension UICustomTextField: UIScribbleInteractionDelegate {
    func scribbleInteractionWillBeginWriting(_ interaction: UIScribbleInteraction) {
        print("🥺 scribbleInteractionWillBeginWriting")
    }

    func scribbleInteractionDidFinishWriting(_ interaction: UIScribbleInteraction) {
        print("👀 scribbleInteractionDidFinishWriting")
    }
}
