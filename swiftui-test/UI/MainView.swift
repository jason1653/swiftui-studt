//
//  MainView.swift
//  swiftui-test
//
//  Created by jason on 2023/06/09.
//

import SwiftUI

struct MainView: View {
    init() {
        // 네비게이션 바의 배경색과 틴트 색상 설정
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .red
        appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        
        UINavigationBar.appearance().standardAppearance = appearance
    }
    

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
                NavigationLink(destination: TabMenu()) {
                    Text("탭메뉴")
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
        .navigationBarColor(backgroundColor: .black, titleColor: .white)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Preview(source: MainView())
    }
}
