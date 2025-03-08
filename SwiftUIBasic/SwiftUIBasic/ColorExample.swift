//
//  ColorExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/8/25.
//

import SwiftUI

struct ColorExample: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.primary // 라이트모드 - 검정, 다크모드 - 흰색
//                Color(UIColor.secondarySystemBackground) // UIKit 색상
                Color("CustomColor") // string으로 커스텀 컬러 사용
            )
            .frame(width: 300, height: 200)
            .shadow(color: .red.opacity(0.5), radius: 60, x: 10, y: 40)
    }
}

#Preview {
    ColorExample()
}
