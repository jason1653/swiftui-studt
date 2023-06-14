//
//  RouterAlertModifier.swift
//  swiftui-test
//
//  Created by jason on 2023/06/14.
//

import SwiftUI
import Combine

protocol RouterAlertScreenProtocol {
    
}

struct RouterAlertModifier<ScreenType> where ScreenType: RouterAlertScreenProtocol {
    let publisher: AnyPublisher<ScreenType, Never>
    let alert: (ScreenType) -> Alert
    
    @State private var screenType: ScreenType?
}

extension RouterAlertModifier: ViewModifier {
    func body(content: Content) -> some View {
            content
                .onReceive(publisher) { screenType = $0 }
                .alert(
                    isPresented: .init(get: { screenType != nil },
                                       set: { if !$0 { screenType = nil } }),
                    content: {
                        if let type = screenType {
                            return alert(type)
                        } else {
                            return Alert(title: Text("Something went wrong"),
                                         message: nil,
                                         dismissButton: .cancel())
                        }
                    })
        }
}
