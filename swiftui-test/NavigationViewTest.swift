//
//  NavigationView.swift
//  swiftui-test
//
//  Created by jason on 2023/06/08.
//

import SwiftUI

struct NavigationViewTest: View {
    var body: some View {
        VStack {
            Text("세부 내용")
                .font(.largeTitle)
            
            Spacer()
        }
        .navigationTitle("세부")
    }
}

struct NavigationViewTest_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewTest()
    }
}
