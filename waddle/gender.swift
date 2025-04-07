//
//  gender.swift
//  waddle
//
//  Created by Alifa Reppawali on 26/03/25.
//

import SwiftUI

struct GenderCard: View {
    var imageName: String
    var gender: String
    @Binding var selectedGender: String  // Bind selected gender

    var isSelected: Bool {
        selectedGender == gender
    }
    
    var textColor:Color{
        return isSelected ? Color.white : Color.black
    }
    
    var genderColor:Color{
        if isSelected {
            return gender == "Boy" ? Color.blue : Color.pink
        }
        else {
            return Color.white
        }
    }
    
    var body: some View {
            Button(action: {
                selectedGender = gender  // Set selected gender when tapped
            }) {
                VStack(spacing:0) {
                    ZStack {
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 110)
                    }
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(isSelected ? genderColor : Color.white) // Change color if selected
                        .frame(height: 110)
                        .overlay(
                            Text(gender)
                                .foregroundColor(textColor)
                                .bold(isSelected)
                                .font(.system(size: 27))
                        )
                }
                .frame(width: 170)
                .shadow(radius: 5)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(genderColor, lineWidth: 3)
                )
            }
        }
    }

    struct GenderSelectionView: View {
        @State private var selectedGender: String = ""

        var body: some View {

            HStack(spacing: 20) {
                    GenderCard(imageName: "duckTest", gender: "Boy", selectedGender: $selectedGender)
                    GenderCard(imageName: "duckTest", gender: "Girl", selectedGender: $selectedGender)
                }
            .padding()
        }
    }

    #Preview {
        GenderSelectionView()
    }
