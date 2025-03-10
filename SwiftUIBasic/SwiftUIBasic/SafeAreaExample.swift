//
//  SafeAreaExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/10/25.
//

import SwiftUI

struct SafeAreaExample: View {
    var body: some View {
        ScrollView { // 시작은 safeArea를 준수하지만, scroll하면 무시하며 scroll된다.
            Text("Titles goes here")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.white)
                    .frame(height: 150).shadow(radius: 10)
                    .padding(20)
            }
        }
        .background(.green)
//        .ignoresSafeArea(edges: .all)
        
//        VStack {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//
//            Spacer()
//        }
//        .frame(maxWidth: .infinity)
//        .background(.red)
    }
}

#Preview {
    SafeAreaExample()
}
