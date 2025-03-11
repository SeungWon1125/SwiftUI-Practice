//
//  AnimationExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/11/25.
//

import SwiftUI

struct AnimationExample: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button {
                withAnimation(Animation.bouncy) {
//                withAnimation(Animation.default.repeatCount(3, autoreverses: true)) {
//                withAnimation(Animation.default.repeatForever()) { // 계속 반복
                    isAnimated.toggle()
                }

            } label: {
                Text("Button")
            }
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .red : .green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 100 : 0))
                .offset(y: isAnimated ? 0 : 100)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationExample()
}
