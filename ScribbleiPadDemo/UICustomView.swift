//
//  UICustomView.swift
//  UICustomView
//
//  Created by Erik Flores on 26/8/21.
//

import UIKit

class UICustomView: UIView {
    var customTextField: UITextField?

    init(customTextField: UITextField?) {
        super.init(frame: .zero)
        self.customTextField = customTextField
        let indirectScribbleInteraction = UIIndirectScribbleInteraction(delegate: self)
        addInteraction(indirectScribbleInteraction)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension UICustomView: UIIndirectScribbleInteractionDelegate {
    func indirectScribbleInteraction(_ interaction: UIInteraction, focusElementIfNeeded elementIdentifier: String, referencePoint focusReferencePoint: CGPoint, completion: @escaping ((UIResponder & UITextInput)?) -> Void) {
        if customTextField != nil {
            customTextField?.becomeFirstResponder()
            completion(customTextField)
        }
    }

    func indirectScribbleInteraction(_ interaction: UIInteraction, frameForElement elementIdentifier: String) -> CGRect {
        return bounds
    }

    func indirectScribbleInteraction(_ interaction: UIInteraction, requestElementsIn rect: CGRect, completion: @escaping ([String]) -> Void) {
        completion(["CustomTextIdentifier"])
    }

    func indirectScribbleInteraction(_ interaction: UIInteraction, isElementFocused elementIdentifier: String) -> Bool {
        return true
    }

}
