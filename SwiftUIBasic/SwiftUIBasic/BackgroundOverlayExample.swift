//
//  BackgroundOverlayExample.swift
//  SwiftUIBasic
//
//  Created by 김승원 on 3/9/25.
//

import SwiftUI

struct BackgroundOverlayExample: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(width: 100, height: 100)
                .background( // background(View) <- View가 들어감
                    Circle()
                        .fill(Color.red)
                        .frame(width: 100, height: 100)
                    // Text의 frame을 조절하거나, background의 Circle을 조정하거나 같은 결과
                    // but 실질적으로 차지하는 건 text의 크기 not Circle
                )
                .frame(width: 120, height: 120)
                .background(
                    Circle()
                        .fill(.blue)
                        .frame(width: 120, height: 120)
                )
            
            Circle()
                .fill(.pink)
                .frame(width: 100, height: 100)
                .overlay {
                    Text("hello")
                }
            
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .overlay(alignment: .topLeading) {
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 50, height: 50)
                }
                .background(
                    Rectangle()
                        .fill(.red)
                        .frame(width: 150, height: 150)
                    ,alignment: .center
                )
            
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundStyle(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [.red,.blue],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: .blue.opacity(0.3), radius: 10, x: 0.0, y: 10)
                        .overlay(alignment: .bottomTrailing) {
                            Circle()
                                .fill(.red)
                                .frame(width: 35, height: 35)
                                .overlay {
                                    Text("4")
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                }
                                .shadow(color: .black.opacity(0.3), radius: 10, x: 0.0, y: 10)
                        }
                )
        }
    }
}

#Preview {
    BackgroundOverlayExample()
}
