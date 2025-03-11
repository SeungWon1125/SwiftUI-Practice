//
//  BindingExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/10/25.
//

import SwiftUI

struct BindingExample: View {
    
    @State var backgroundColor: Color = .green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    // 하위뷰에서 상위뷰의 프로퍼티를 모름 -> 바인딩
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = .blue //  하위뷰에서만 사용하기 때문에 State
    
    var body: some View {
        Button {
            backgroundColor = .orange
            buttonColor = .pink
            title = "Button Tapped"
        } label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    BindingExample()
}
