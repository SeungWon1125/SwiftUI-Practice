//
//  SheetsExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/13/25.
//

import SwiftUI

struct SheetsExample: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
//            .fullScreenCover(isPresented: $showSheet) {
//                SecondScreen()
//            }
            .sheet(isPresented: $showSheet) { // View하나에 sheet 또는 fullScreenCover하나
                SecondScreen()
            }
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.ignoresSafeArea()
            
            Button {
                dismiss()
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
    SheetsExample()
//    SecondScreen()
}
