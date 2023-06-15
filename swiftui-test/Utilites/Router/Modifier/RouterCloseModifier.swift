//
//  RouterCloseModifier.swift
//  swiftui-test
//
//  Created by jason on 2023/06/15.
//

import SwiftUI
import Combine

struct RouterCloseModifier: ViewModifier {
    let publisher: AnyPublisher<Void, Never>
    
    @Environment(\.presentationMode) private var presentationMode
    
    func body(content: Content) -> some View {
        content
            .onReceive(publisher, perform: { _ in
                presentationMode.wrappedValue.dismiss()
            })
    }
}

