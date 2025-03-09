//
//  FrameExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/9/25.
//

import SwiftUI

struct FrameExample: View {
    var body: some View {
        Text("Hello, World!")
            .background(.green)
//            .frame(width: 300, height: 300, alignment: .center)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(.blue) // 프레임 포함된 백그라운드 적용하기 위해선 순서가 중요
    }
}

#Preview {
    FrameExample()
}
