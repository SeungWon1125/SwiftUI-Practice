//
//  ExtractSubviews.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/10/25.
//

import SwiftUI

struct ExtractSubviews: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            // 생성자 필요
            MyItem(title: "Apple", count: 2, color: .red)
            MyItem(title: "Banana", count: 3, color: .yellow)
            MyItem(title: "mango", count: 2, color: .orange)
        }
    }
}

#Preview {
    ExtractSubviews()
}

// 하위뷰로 빼기
struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
