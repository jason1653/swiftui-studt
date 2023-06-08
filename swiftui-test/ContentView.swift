//
//  ContentView.swift
//  swiftui-test
//
//  Created by jason on 2023/06/08.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingModal = false
    
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, SwiftUI")
                    .font(.largeTitle)
                
                NavigationLink(destination: NavigationViewTest()) {
                    Text("네비게이션1")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: NavigationView2Test()) {
                    Text("네비게이션2")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                Button("테스트", action: {
                    isShowingModal = true
                })
                    
                    .frame(maxWidth: .infinity)
                    .sheet(isPresented: $isShowingModal, content: {
                        ModalView()
                    })
                    .padding(20)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .padding(10)
                    .cornerRadius(10)
                    
                
                    
                    
            }
        }
        .navigationTitle("Home")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
