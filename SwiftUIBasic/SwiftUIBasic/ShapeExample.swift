//
//  ShapeExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/8/25.
//

import SwiftUI

struct ShapeExample: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
//        Capsule(style: .continuous)
//        Ellipse()
//        Circle()
//            .fill(Color.brown)
//            .foregroundStyle(.pink) // fill이 foregroundStyle을 덮어씌움
//            .stroke(
//                Color.red,
//                style: StrokeStyle(
//                    lineWidth: 20,
//                    lineCap: .round,
//                    dash: [30]
//                )
//            )
            .trim(from: 0.0, to: 0.4) // from 에서 to까지 자름
            .stroke(.purple, lineWidth: 50)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ShapeExample()
}
