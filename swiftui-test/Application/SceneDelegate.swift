//
//  SceneDelegate.swift
//  swiftui-test
//
//  Created by jason on 2023/06/09.
//

import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  
    var window: UIWindow?
  
  
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        
        configureAppearance()
        
        
        let rootView = MainView()
        
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: rootView)
            self.window = window
            window.makeKeyAndVisible()
        }
        
        
    }
  
  
    private func configureAppearance() {
        /*
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor(named: "peach")!
        ]
        UINavigationBar.appearance().titleTextAttributes = [
            .foregroundColor: UIColor(named: "peach")!
        ]
        UITableView.appearance().backgroundColor = .clear
        UISlider.appearance().thumbTintColor = UIColor(named: "peach")
         */
  }
}
