//
//  FavoriteProductScrollView.swift
//  swiftui-test
//
//  Created by jason on 2023/06/13.
//

import SwiftUI

struct FavoriteProductScrollView: View {
    var body: some View {
        VStack(alignment: .leading, content: {
            title
            product
        })
        .padding()
        .transition(.slide)
    }
}

private extension FavoriteProductScrollView {
    var title: some View {
        HStack(alignment: .top, spacing: 5, content: {
            Text("즐겨찾는 상품")
                .font(.headline)
                .fontWeight(.medium)
            
            Symbol("arrowtriangle.up.square")
                .padding(4)
                .rotationEffect(Angle(radians: 0))
            
            Spacer()
        })
        .padding(.bottom, 8)
        .onTapGesture {
           
        }
    }
    
    var product: some View {
        return ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(spacing: 0, content: {
                GeometryReader { g in
                    VStack(content: {
                        ResizeImage("apple", renderingMode: .original)
                            .clipShape(Circle())
                            .frame(width: 90, height: 90)
                            .scaleEffect(self.scaledValue(from: g))
                    })
                    .position(x: g.size.width / 2, y: g.size.height / 2)
                }
                .frame(width: 105, height: 105)
                
                GeometryReader { g in
                    VStack(content: {
                        ResizeImage("apple", renderingMode: .original)
                            .clipShape(Circle())
                            .frame(width: 90, height: 90)
                            .scaleEffect(self.scaledValue(from: g))
                    })
                    .position(x: g.size.width / 2, y: g.size.height / 2)
                }
                .frame(width: 105, height: 105)
                
                GeometryReader { g in
                    VStack(content: {
                        ResizeImage("apple", renderingMode: .original)
                            .clipShape(Circle())
                            .frame(width: 90, height: 90)
                            .scaleEffect(self.scaledValue(from: g))
                    })
                    .position(x: g.size.width / 2, y: g.size.height / 2)
                }
                .frame(width: 105, height: 105)
                
                GeometryReader { g in
                    VStack(content: {
                        ResizeImage("apple", renderingMode: .original)
                            .clipShape(Circle())
                            .frame(width: 90, height: 90)
                            .scaleEffect(self.scaledValue(from: g))
                    })
                    .position(x: g.size.width / 2, y: g.size.height / 2)
                }
                .frame(width: 105, height: 105)
                
                GeometryReader { g in
                    VStack(content: {
                        ResizeImage("apple", renderingMode: .original)
                            .clipShape(Circle())
                            .frame(width: 90, height: 90)
                            .scaleEffect(self.scaledValue(from: g))
                    })
                    .position(x: g.size.width / 2, y: g.size.height / 2)
                }
                .frame(width: 105, height: 105)
                
                GeometryReader { g in
                    VStack(content: {
                        ResizeImage("apple", renderingMode: .original)
                            .clipShape(Circle())
                            .frame(width: 90, height: 90)
                            .scaleEffect(self.scaledValue(from: g))
                    })
                    .position(x: g.size.width / 2, y: g.size.height / 2)
                }
                .frame(width: 105, height: 105)
            })
        })
    }
    
    func scaledValue(from geometry: GeometryProxy) -> CGFloat {
        let xOffset = geometry.frame(in: .global).minX - 16
        let minSize: CGFloat = 0.9
        let maxSize: CGFloat = 1.1
        let delta: CGFloat = maxSize - minSize
        let size = minSize + delta * (1 - xOffset / UIScreen.main.bounds.width)
        return max(min(size, maxSize), minSize)
    }
}

struct FavoriteProductScrollView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteProductScrollView()
    }
}
