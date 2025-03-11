//
//  ConditionalStatementsExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/11/25.
//

import SwiftUI

struct ConditionalStatementsExample: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button {
                showCircle.toggle()
            } label: {
                Text("Circle Button: \(showCircle)")
            }
            
            Button {
                showRectangle.toggle()
            } label: {
                Text("Rectangle Button: \(showRectangle)")
            }
            
            Button {
                isLoading.toggle()
            } label: {
                Text("Is Loading: \(isLoading)")
            }
            
            if isLoading {
                ProgressView()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            if !showCircle && !showRectangle {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 200, height: 100)
            }
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalStatementsExample()
}
