//
//  TabMenu.swift
//  swiftui-test
//
//  Created by jason on 2023/06/12.
//

import SwiftUI

struct TabMenu: View {
    
    private enum Tabs {
        case tab1, recipe, gallery, myPage
    }
    
    @State private var selectedTab: Tabs = .tab1
    
    var body: some View {
        TabView(selection: $selectedTab, content: {
            Group(content: {
                tab1
            })
            .accentColor(.primary)
        })
        .accentColor(.red)
        .edgesIgnoringSafeArea(edges)
        .statusBar(hidden: selectedTab == .recipe)
        
    }
}

private extension TabMenu {
    var tab1: some View {
        Tab01()
            .tag(Tabs.tab1)
            .tabItem(image: "house", text: "홈")
        
    }
    
    var edges: Edge.Set {
        if #available(iOS 13.4, *) {
            return .init()
        } else {
            return .top
        }
    }
}


fileprivate extension View {
    func tabItem(image: String, text: String) -> some View {
        self.tabItem {
            Symbol(image, imageScale: .large)
                .font(Font.system(size:17, weight: .light))
            Text(text)
        }
    }
}


struct TabMenu_Previews: PreviewProvider {
    static var previews: some View {
        Preview(source: TabMenu())
    }
}
