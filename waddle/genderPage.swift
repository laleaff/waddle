//
//  genderPage.swift
//  waddle
//
//  Created by Alifa Reppawali on 26/03/25.
//

import SwiftUI

struct genderView: View {
    @State private var selectedGender: String = ""
    var body: some View {
        ZStack{
            BackgroundGradientView()
            GeometryReader { geometry in
                
                Text("Biological differences like body composition and metabolism mean that gender can affect how much water your body needs to stay properly hydrated.\n\nBy knowing your gender, we can give you more accurate hydration goals.")
                    .font(.system(size: 10))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: geometry.size.width * 0.9) // optional, for wrapping nicely
                    .position(x: geometry.size.width / 2,
                              y: geometry.size.height / 14)
                
                Circle()
                    .fill(Color.lightGradient) // Use your gradient color
                    .frame(width: geometry.size.width * 1.5, // 3/4 of screen width
                           height: geometry.size.width * 1.5) // Keep it a perfect circle
                    .position(x: geometry.size.width / 2, // Center horizontally
                            y: geometry.size.height / 1.75) // Adjust as needed
                
                Text("Are you a?")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                    .position(x: geometry.size.width / 2,
                              y: geometry.size.height / 6.5)

                Rectangle()
                    .fill(Color.darkBlue)
                    .frame(width: geometry.size.width * 0.7,
                       height: geometry.size.width * 2)
                    .rotationEffect(.degrees(-40))
                    .position(x: geometry.size.width / 3.5,
                              y: geometry.size.height / 1.07)
                
                Rectangle()
                    .fill(Color.blueBG)
                    .frame(width: geometry.size.width * 0.7,
                       height: geometry.size.width * 2)
                    .rotationEffect(.degrees(50))
                    .position(x: geometry.size.width / 2,
                              y: geometry.size.height / 0.9)
                    }
            VStack(spacing: 20){
                Spacer()
                    .frame(height: 200)
//                Text("Are you a?")
//                    .foregroundColor(Color(.white))
//                    //.font(.custom("Noteworthy", size: 20))
//                    .bold()
//                    .padding()
                
                GenderSelectionView()
                
                NextButton()
                Spacer()
            }
        }
    }
}

#Preview {
    genderView()
}
