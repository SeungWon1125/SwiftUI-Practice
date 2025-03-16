//
//  PopoverExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/16/25.
//

// sheets
// animation
// transitions

import SwiftUI

struct PopoverExample: View {
    
    @State var showNewSreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button("Button") {
                    
                    showNewSreen.toggle()
                    
                }
                .font(.largeTitle)
                Spacer()
            }
            // 1. sheet
//            .sheet(isPresented: $showNewSreen) {
//                NewScreen()
//            }
            
            // 2. transition
            ZStack {
                if showNewSreen {
                    NewScreen(showNewSreen: $showNewSreen)
                        .padding(.top, 100)
                        .transition(.slide)
                        .animation(.bouncy, value: showNewSreen)
                }
            }
            .zIndex(2.0)
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var showNewSreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            
            Button {
//                dismiss()
                showNewSreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

#Preview {
    PopoverExample()
}
