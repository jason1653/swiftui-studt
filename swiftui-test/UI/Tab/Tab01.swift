//
//  Tab01.swift
//  swiftui-test
//
//  Created by jason on 2023/06/12.
//

import SwiftUI

struct Tab01: View {
    var body: some View {
        VStack(spacing: 0, content: {
            favoriteProducts
        })
    }
}

private extension Tab01 {
    var favoriteProducts: some View {
        FavoriteProductScrollView()
            .padding(.top, 24)
            .padding(.bottom, 8)
    }
}

struct Tab01_Previews: PreviewProvider {
    static var previews: some View {
        Preview(source: Tab01())
    }
}
