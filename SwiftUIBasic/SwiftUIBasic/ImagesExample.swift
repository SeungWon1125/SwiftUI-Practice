//
//  ImagesExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/9/25.
//

import SwiftUI

struct ImagesExample: View {
    var body: some View {
        Image("catImage")
            .renderingMode(.template) // 이미지의 색상 변경 가능
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 200)
            .foregroundStyle(.blue)
//            .cornerRadius(100)
            .clipShape(RoundedRectangle(cornerRadius: 100))
            .background(Color.red)
    }
}

#Preview {
    ImagesExample()
}
