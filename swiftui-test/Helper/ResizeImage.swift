//
//  ResizeImage.swift
//  swiftui-test
//
//  Created by jason on 2023/06/13.
//

import SwiftUI

struct ResizeImage: View {
    let imageName: String
    let contentMode: ContentMode
    let renderingMode: Image.TemplateRenderingMode?
    
    init(_ imageName: String, contentMode: ContentMode = .fill, renderingMode: Image.TemplateRenderingMode? = nil) {
        self.imageName = imageName
        self.contentMode = contentMode
        self.renderingMode = renderingMode
    }
    
    var body: some View {
        Image(imageName)
            .renderingMode(renderingMode)
            .resizable()
            .aspectRatio(contentMode: contentMode)
    }
}

struct ResizeImage_Previews: PreviewProvider {
    static var previews: some View {
      Group {
          ResizeImage("apple")
          ResizeImage("apple", contentMode: .fit)
        
        Button(action: {}) {
            ResizeImage("apple")
        }
        Button(action: {}) {
            ResizeImage("apple", renderingMode: .original)
        }
      }
    }
}
