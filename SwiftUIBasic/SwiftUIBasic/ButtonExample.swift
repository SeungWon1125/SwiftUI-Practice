//
//  ButtonExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/10/25.
//

import SwiftUI

struct ButtonExample: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack {
            Text(title)
            
            Button("pressme!") {
                self.title = "Button Tapped"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "Button Tapped2"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background {
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    }
            })
            
            Button {
                self.title = "Button Tapped3"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.red)
                    }
            }
        }
    }
}

#Preview {
    ButtonExample()
}
