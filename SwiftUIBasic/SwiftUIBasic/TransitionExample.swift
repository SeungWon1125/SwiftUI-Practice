//
//  TransitionExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/13/25.
//

import SwiftUI

struct TransitionExample: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button".uppercased()) {
                    withAnimation(.bouncy) {
                        showView.toggle()
                    }
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(
                        .asymmetric(
                            insertion: .move(edge: .leading), // 등장
                            removal: .scale // 사라질 때
                        )
                    )
//                    .transition(.move(edge: .bottom))
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
                    .animation(.easeInOut, value: showView)
            }
        }
    }
}

#Preview {
    TransitionExample()
}
