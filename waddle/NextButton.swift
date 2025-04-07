//
//  NextButton.swift
//  waddle
//
//  Created by Alifa Reppawali on 27/03/25.
//

import SwiftUI

struct NextButton: View {
//    var onTap:() -> Void;
    
    var body: some View {
        Button{
//            onTap()
        }label: {
            Text("NEXT")
                .font(.custom("ChalkboardSE-Bold", size: 10))
                .foregroundColor(.blueBG)
                .padding()
                .frame(width: 80, height: 25)
                .background(Color.white)
                .cornerRadius(20)

                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white) // Base color
                        .overlay(
                            // Inner shadow effect using a gradient
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.gray.opacity(12), lineWidth: 10)
                                .blur(radius: 3)
                                .mask(
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(
                                            LinearGradient(
                                                gradient: Gradient(colors: [
                                                    Color.black.opacity(0.4),
                                                    Color.clear,
                                                    Color.black.opacity(0.4)
                                                ]),
                                                startPoint: .top,
                                                endPoint: .bottom
                                            )
                                        )
                                )
                        )
                )
                .clipShape(RoundedRectangle(cornerRadius: 25))
        }
        .buttonStyle(PlainButtonStyle()) // Removes default button styling
    }
}

#Preview {
    NextButton()
}
