//
//  TernaryOperatorsExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/11/25.
//

import SwiftUI

struct TernaryOperatorsExample: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button {
                isStartingState.toggle()
            } label: {
                Text("Button: \(isStartingState)")
            }
            
            Text(isStartingState ? "Starting State" : "Ending State")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25: 0)
                .fill(isStartingState ? .red : .blue)
                .frame(width: isStartingState ? 200 : 50, height: isStartingState ? 400 : 50)
        }
        
        Spacer()
    }
}

#Preview {
    TernaryOperatorsExample()
}
