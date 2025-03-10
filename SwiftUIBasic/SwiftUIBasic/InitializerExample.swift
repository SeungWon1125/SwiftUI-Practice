//
//  InitializerExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/10/25.
//

import SwiftUI

struct InitializerExample: View {
    
    enum Fruit {
        case apple
        case orange
    }
    
    // 초기화 필요!!
    // 생성자 함수 자동 생성
    let backgroundColor: Color
    let count: Int
    let title: String
    
    // 생성자를 직접 만들면, 자동 생성된 생성자 사라져
    init(count: Int, fruit: Fruit) {
        self.count = count
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    InitializerExample(count: 43, fruit: .orange)
}
