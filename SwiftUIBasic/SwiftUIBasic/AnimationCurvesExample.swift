//
//  AnimationCurvesExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/12/25.
//

import SwiftUI

struct AnimationCurvesExample: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 1.0
    
    var body: some View {
        VStack {
            Button {
                isAnimating.toggle()
            } label: {
                Text("Button")
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 40, height: 40)
                .animation(.default, value: isAnimating) // Animation.default는 duration 없다.
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 40, height: 40)
                .animation(.easeIn(duration: timing), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 40, height: 40)
                .animation(.easeOut(duration: timing), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 40, height: 40)
                .animation(.easeInOut(duration: timing), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 40, height: 40)
                .animation(.linear(duration: timing), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 40, height: 40)
                .animation(
                    .spring(
                        response: 1.0, // 반응 속도 (단위: 초)
                        dampingFraction: 0.7, // 감쇠율 (범위 0.0 ~ 1.0 / 0에 가까울수록 더 많이 튕김)
                        blendDuration: 0.0 // 다른 애니메이션과 부드럽게 전환 (단위: 초)
                    ),
                    value: isAnimating
                )
        }
    }
}

#Preview {
    AnimationCurvesExample()
}
