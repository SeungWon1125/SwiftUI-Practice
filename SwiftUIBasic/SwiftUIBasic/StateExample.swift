//
//  StateExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/10/25.
//

import SwiftUI

struct StateExample: View {
    
    @State var backgroundColor: Color = .green
    @State var myTitle: String = "MyTitle"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button {
                        backgroundColor = .red
                        myTitle = "Button 1 Tapped"
                        count = count + 1
                    } label: {
                        Text("Button 1")
                    }
                    
                    Button {
                        backgroundColor = .blue
                        myTitle = "Button 2 Tapped"
                        count = count - 1
                    } label: {
                        Text("Button 2")
                    }
                }
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    StateExample()
}
