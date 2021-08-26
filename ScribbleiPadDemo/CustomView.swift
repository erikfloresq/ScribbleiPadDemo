//
//  CustomView.swift
//  CustomView
//
//  Created by Erik Flores on 26/8/21.
//

import SwiftUI

struct CustomView: UIViewRepresentable {
    typealias UIViewType = UICustomView

    func makeUIView(context: Context) -> UICustomView {
        UICustomView()
    }

    func updateUIView(_ uiView: UICustomView, context: Context) {

    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView()
    }
}
