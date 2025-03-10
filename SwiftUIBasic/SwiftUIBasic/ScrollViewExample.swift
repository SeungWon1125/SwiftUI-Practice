//
//  ScrollViewExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/10/25.
//

import SwiftUI

struct ScrollViewExample: View {
    var body: some View {
        ScrollView {
            LazyVStack { // 지연로딩 지원
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
        .frame(maxWidth: .infinity)
        
//        ScrollView(.vertical, showsIndicators: true) {
//            VStack {
//                ForEach(0..<10) { index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(height: 300)
//                }
//            }
//        }
    }
}

#Preview {
    ScrollViewExample()
}
