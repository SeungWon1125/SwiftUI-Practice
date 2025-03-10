//
//  PaddingExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/10/25.
//

import SwiftUI

struct PaddingExample: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("두줄 두줄 두줄 두줄 두줄 두줄 두줄 두줄 두줄 두줄 두줄 두줄 두줄 두줄 두줄 두줄 두줄 두줄 두줄")
        }
        .padding()
        .padding(.vertical, 10)

        .background {
            RoundedRectangle(cornerRadius: 15)
                .fill(.white)
                .shadow(radius: 10)
        }
        .padding(.horizontal, 16)
        
//        .background {
//            Color.white
//                .cornerRadius(15)
//                .shadow(radius: 10)
//        }
//        .padding(.horizontal, 16)
    }
}

#Preview {
    PaddingExample()
}
