//
//  View+Extenstion.swift
//  swiftui-test
//
//  Created by jason on 2023/06/08.
//

import Foundation
import SwiftUI

extension View {
    func navigationBarColor(backgroundColor: UIColor?, titleColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor, titleColor: titleColor))
    }
}
