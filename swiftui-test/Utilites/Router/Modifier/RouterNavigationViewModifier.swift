//
//  RouterNavigationViewModifier.swift
//  swiftui-test
//
//  Created by jason on 2023/06/15.
//

import SwiftUI
import Combine


protocol RouterNavigationViewScreenProtocol {}

struct RouterNavigationViewModifier<Screen, ScreenType> where Screen: View, ScreenType: RouterNavigationViewScreenProtocol {
    
    
    let publisher: AnyPublisher<ScreenType, Never>
    var screen: (ScreenType) -> Screen
    let onDismiss: ((ScreenType) -> Void)?
    
    @State private var screenType: ScreenType?
}

extension RouterNavigationViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        ZStack {
            NavigationLink(
                   "",
                   isActive: Binding<Bool>(
                       get: { screenType != nil },
                       set: {
                           if !$0 {
                               if let type = screenType { onDismiss?(type) }
                               screenType = nil
                           }
                       }),
                   destination: {
                       if let type = screenType {
                           screen(type)
                       } else {
                           EmptyView()
                       }
                   })

               content
        }
        .onReceive(publisher, perform: {
            screenType = $0
        })
    }
}
