//
//  GradientsExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/8/25.
//

import SwiftUI

struct GradientsExample: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                LinearGradient( // 기본 그라디언트
//                    gradient: Gradient(colors: [.red, .blue]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing
//                )
                
//                RadialGradient( // 둥근 그라디언트
//                    gradient: Gradient(colors: [.red, .blue]),
//                    center: .center,
//                    startRadius: 2,
//                    endRadius: 200
//                )

                AngularGradient( // 각도에 따른 그라디언트 (right 시작)
                    gradient: Gradient(colors: [.red, .blue]),
                    center: .center,
                    angle: .degrees(0)
                )
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsExample()
}
