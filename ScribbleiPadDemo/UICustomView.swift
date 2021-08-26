//
//  UICustomView.swift
//  UICustomView
//
//  Created by Erik Flores on 26/8/21.
//

import UIKit

class UICustomView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        let indirectScribbleInteraction = UIIndirectScribbleInteraction(delegate: self)
        addInteraction(indirectScribbleInteraction)

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension UICustomView: UIIndirectScribbleInteractionDelegate {
    func indirectScribbleInteraction(_ interaction: UIInteraction, focusElementIfNeeded elementIdentifier: String, referencePoint focusReferencePoint: CGPoint, completion: @escaping ((UIResponder & UITextInput)?) -> Void) {

    }

    func indirectScribbleInteraction(_ interaction: UIInteraction, frameForElement elementIdentifier: String) -> CGRect {
        return bounds
    }

    func indirectScribbleInteraction(_ interaction: UIInteraction, requestElementsIn rect: CGRect, completion: @escaping ([String]) -> Void) {

    }

    func indirectScribbleInteraction(_ interaction: UIInteraction, isElementFocused elementIdentifier: String) -> Bool {
        return true
    }

}
