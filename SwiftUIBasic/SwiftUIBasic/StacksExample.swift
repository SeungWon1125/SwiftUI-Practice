//
//  StacksExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/10/25.
//

import SwiftUI

struct StacksExample: View {
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Circle()
                    .fill(.blue)
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
            }
            .background(.green)
            
            Text("1")
                .font(.title)
                .bold()
                .foregroundStyle(.white)
                .background(
                    Circle()
                        .fill(.red)
                        .frame(width: 100, height: 100)
                )
                .frame(width: 100, height: 100)
                .background(.yellow)
        }
        
        // ZStack과 .background는 같은 효과를 내지만
        // ZStack은 최대 크기의 요소만큼 frame이 적용되지만
        // background에 View를 넣을 경우 frame이 적용되지 않는다.
    }
}

#Preview {
    StacksExample()
}
