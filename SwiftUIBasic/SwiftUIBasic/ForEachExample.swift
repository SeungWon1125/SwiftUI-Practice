//
//  ForEachExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/10/25.
//

import SwiftUI

struct ForEachExample: View {
    
    let datas: [String] = ["hello", "hello2", "hello3"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            ForEach(datas.indices) { index in
                Text("\(datas[index])")
            }
            
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    
//                    Text("index: \(index)")
//                }
//            }
        }
    }
}

#Preview {
    ForEachExample()
}
