//
//  NavigationBackItem.swift
//  swiftui-test
//
//  Created by jason on 2023/06/08.
//

import SwiftUI

struct NavigationBackItem: View {
    var title: String
        
    var body: some View {
        Button(action: {
            // Handle back button action
        }) {
            HStack {
                Image(systemName: "chevron.left")
                Text(title)
            }
        }
    }
}

struct NavigationBackItem_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBackItem(title: "테스트")
    }
}
