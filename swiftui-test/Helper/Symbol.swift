//
//  Symbol.swift
//  swiftui-test
//
//  Created by jason on 2023/06/12.
//

import SwiftUI

struct Symbol: View {
    let systemName: String
    let imageScale: Image.Scale
    let color: Color?
    
    init(_ systemName: String, imageScale: Image.Scale = .medium, color: Color? = nil) {
        self.systemName = systemName
        self.imageScale = imageScale
        self.color = color
    }
    
    var body: some View {
        Image(systemName: systemName)
            .imageScale(imageScale)
            .foregroundColor(color)
    }
}

struct Symbol_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20, content: {
            Symbol("heart.fill")
            Symbol("heart.fill", imageScale: .large)
            Symbol("heart.fill", imageScale: .large, color: .red)
            Symbol("heart.fill", imageScale: .large, color: .red)
                .font(Font.system(size: 25, weight: .black))
            
        })
    }
}
