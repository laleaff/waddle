//
//  IntakeFrquencyPage.swift
//  waddle
//
//  Created by Alifa Reppawali on 06/04/25.
//

import SwiftUI

struct IntakeFrquencyPage: View {
    @State private var selectedNumber = 8
    
    var body: some View {
        ZStack {
            BackgroundGradientView()
            GeometryReader{
                geometry in
                
                Circle()
                    .fill(Color.pastelBlue)
                    .frame(width: geometry.size.width * 0.7,
                           height: geometry.size.width * 2)
                //.rotationEffect(.degrees(-40))
                    .position(x: geometry.size.width / 3.5,
                              y: geometry.size.height / 1.13)
                Circle()
                    .fill(Color.lightBlue)
                    .frame(width: geometry.size.width * 0.7,
                           height: geometry.size.width * 2)
                //.rotationEffect(.degrees(-40))
                    .position(x: geometry.size.width / 1.3,
                              y: geometry.size.height / 1.07)
                
                Ellipse()
                    .fill(Color.lightGradient)
                    .frame(width: geometry.size.width * 1,
                           height: geometry.size.height * 0.2)
                    .position(x: geometry.size.width / 2,
                              y: geometry.size.height / 1)
            }
            
            VStack(spacing: 20) {
                //                Text("How frequent do you drink water in a day?")
                //                    .foregroundStyle(.white)
                //                    .font(.system(size: 20, weight: .bold))
                //                    .multilineTextAlignment(.center)
                
                Text("How frequent do you drink water in a day?")
                    .foregroundStyle(.white)
                    .font(.system(size: 20))
                    .multilineTextAlignment(.center)
                
                HStack{
                    Menu {
                        ForEach(Array(8...20).sorted(), id: \.self) { number in
                            Button(action: {
                                selectedNumber = number
                            }) {
                                Text("\(number)")
                            }
                        }
                    } label: {
                        HStack {
                            Text("\(selectedNumber)")
                                .foregroundColor(.white)
                                .bold()
                            Text("times a day")
                                .foregroundStyle(Color.white)
                            Image(systemName: "chevron.down")
                                .foregroundColor(.white)
                        }
                        .padding()
                        .frame(height: 50)
                        .background(Color.white.opacity(0.3))
                        .cornerRadius(30)
                    }
                    
                }
                
                Button{
                    //            onTap()
                }label: {
                    Text("SUBMIT")
                        .font(.custom("ChalkboardSE-Bold", size: 10))
                        .foregroundColor(.blueBG)
                        .padding()
                        .frame(width: 80, height: 25)
                        .background(Color.white)
                        .cornerRadius(20)
                }
                .padding()
            }
        }
    }
}
    
#Preview {
    IntakeFrquencyPage()
}

