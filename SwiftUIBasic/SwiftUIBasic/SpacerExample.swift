//
//  SpacerExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/10/25.
//

import SwiftUI

struct SpacerExample: View {
    var body: some View {
        HStack(spacing: 0) {
            Spacer(minLength: nil)
            
            Rectangle()
                .fill(.red)
                .frame(width: 50, height: 50)
            
            Spacer()
            
            Rectangle()
                .fill(.red)
                .frame(width: 50, height: 50)
            
            Spacer()
            
            Rectangle()
                .fill(.red)
                .frame(width: 50, height: 50)
            
            Spacer()
        }
    }
}

#Preview {
    SpacerExample()
}
