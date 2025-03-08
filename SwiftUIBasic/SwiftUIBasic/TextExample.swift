//
//  TextExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/8/25.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        Text("Hello, World!\nMy name is Seungwon\nnice to meet you SwiftUI".uppercased())
//            .font(.body) // modifier
//            .fontWeight(.semibold)
//            .bold() // direct bold
//            .underline()
//            .italic()
//            .strikethrough()
//            .underline(true, pattern: .solid, color: Color.red)
//            .strikethrough(true, pattern: .solid, color: Color.green)
            .font(.system(size: 14, weight: .semibold, design: .monospaced))
//            .baselineOffset(10) // 행간
//            .kerning(10) // 자간
            .multilineTextAlignment(.leading)
            .foregroundStyle(.blue)
            .frame(width: 200, height: 50, alignment: .center)
            .minimumScaleFactor(0.1) // frame에 다 안 들어가면 폰트 사이즈 줄여줌
    }
}

#Preview {
    TextExample()
}
