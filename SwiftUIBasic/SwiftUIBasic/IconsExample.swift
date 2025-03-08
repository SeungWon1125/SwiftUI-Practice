//
//  IconsExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/8/25.
//

import SwiftUI

struct IconsExample: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original) // 원본 (멀티 컬러 아이콘인 경우 필요할수도)
//            .font(.system(size: 50, weight: .bold))
            .resizable() // 이걸 넣어야 리사이징 가능
            .aspectRatio(contentMode: .fit) // 원본 비율 지켜서 fit: 딱맞게, fill: 꽉 채워서 넘치게
//            .scaledToFill()
//            .scaledToFit()
            .foregroundStyle(.red)
            .frame(width: 300, height: 300)
            .clipped() // frame 넘는 거 자름
    }
}

#Preview {
    IconsExample()
}
