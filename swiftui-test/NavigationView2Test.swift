//
//  NavigationView2Test.swift
//  swiftui-test
//
//  Created by jason on 2023/06/08.
//

import SwiftUI

struct NavigationView2Test: View {
    var body: some View {
        VStack {
            Text("네비게이션2")
                .font(.largeTitle)
            
            Spacer()
        }.padding(50)
        .navigationTitle("세부")
    }
}

struct NavigationView2Test_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView2Test()
    }
}
