//
//  ActivityPage.swift
//  waddle
//
//  Created by Alifa Reppawali on 07/04/25.
//

import SwiftUI

struct ActivityPage: View {
    @State var activityState: String = "Select an option"
    var body: some View {
        ZStack{
            BackgroundGradientView()
            VStack {
                Text("How much do you move daily? Let's find the best fit for you! ")
                    .foregroundStyle(.white)
                    .font(.custom("Noteworthy", size: 15))
                    .multilineTextAlignment(.center)
                    .bold()
                    .padding()
                
                
                Text("Low Intensity 🐌")
                    .foregroundStyle(.white)
                    .font(.custom("Noteworthy", size: 13))
                    .multilineTextAlignment(.center)
                    .bold()
                
                Text("⚙️ Medium Intensity\\n")
                    .foregroundStyle(.white)
                    .font(.custom("Noteworthy", size: 13))
                    .multilineTextAlignment(.center)
                    .bold()
                
                Text("🏃‍♂️ High Intensity\\nYou’re very active daily. Intense workouts, manual labor, or high-energy sports")
                    .foregroundStyle(.white)
                    .font(.custom("Noteworthy", size: 13))
                    .multilineTextAlignment(.center)
                    .bold()
                
                let options = ["Low Intensity 🐌", "Medium Intensity ⚙️", "High Intensity 🏃‍♂️"]
                    Menu {
                        ForEach(options, id: \.self) { option in
                            Button(action: {
                                 activityState = option
                            }) {
                                Text(option)
                            }
                        }
                    } label: {
                        HStack {
                            Text(activityState)
                                .foregroundColor(.white)
                                .font(.headline)
                            Spacer()
                            Image(systemName: "chevron.down")
                                .foregroundColor(.white)
                        }
                        .padding()
                        .frame(height: 40)
                        .background(Color(.systemGray4))
                        .cornerRadius(20)
                    }
                    .padding()
                NextButton()
                    
                }
            }
        }
}
        

#Preview {
    ActivityPage()
}
