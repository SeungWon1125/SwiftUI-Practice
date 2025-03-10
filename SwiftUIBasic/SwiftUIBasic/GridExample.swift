//
//  GridExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/10/25.
//

import SwiftUI

struct GridExample: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 1, alignment: nil),
        GridItem(.flexible(), spacing: 1, alignment: nil),
        GridItem(.flexible(), spacing: 1, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.orange)
                .frame(height: 200)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 1,
                pinnedViews: [.sectionHeaders]
            ) {
                Section {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                } header: {
                    Text("section 1")
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.all, 10)
                        .background(.blue)
                }
                
                Section {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                } header: {
                    Text("section 2")
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.all, 10)
                        .background(.green)
                }
            }
        }
    }
}

#Preview {
    GridExample()
}
