//
//  Page_3.swift
//  Waddle
//
//  Created by Vira Fitriyani on 04/04/25.
//

import SwiftUI

struct Page_3: View {
    @ObservedObject var userData: UserData
    @State private var showAlert: Bool = false
    @State private var navigate: Bool = false
    
    var isButtonDisabled: Bool {
        userData.weight.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ||
        userData.height.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
    var body: some View {
        ZStack {
            Image("BG-3")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                
            VStack {
                Spacer()
                
                VStack() {
                    Spacer()
                        .padding(.top, 250)
                        .padding(.horizontal, 250)
                    Text("Let's customize your journey!")
                        .font(.custom("ChalkboardSE-Bold", size: 15))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        
                    Text("Your weight and height helps us do that.")
                        .font(.custom("ChalkboardSE-Bold", size: 15))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 10)
                }
                
                VStack(spacing: 10) {
                    VStack {
                        Text("Weight")
                            .font(.custom("ChalkboardSE-Bold", size: 15))
                            .foregroundColor(.white)
                        
                        TextField("kg", text: $userData.weight)
                            .padding()
                            .frame(width: 300, height: 40)
                            .background(Color.white.opacity(0.8))
                            .cornerRadius(30)
                            .multilineTextAlignment(.center)
                            .font(.custom("ChalkboardSE-Regular", size: 15))
                            .foregroundColor(.white)
                    }
                    
                    VStack {
                        Text("Height")
                            .font(.custom("ChalkboardSE-Bold", size: 15))
                            .foregroundColor(.white)
                        
                        TextField("cm", text: $userData.height)
                            .padding()
                            .frame(width: 300, height: 40)
                            .background(Color.white.opacity(0.8))
                            .cornerRadius(30)
                            .multilineTextAlignment(.center)
                            .font(.custom("ChalkboardSE-Regular", size: 15))
                            .foregroundColor(.white)
                    }
                }
                
                .padding(.bottom, 20)
                
                Button(action: {
                    if isButtonDisabled{
                        showAlert = true
                    } else {
                        showAlert = false
                        navigate = true
                        UserDefaults.standard.set($userData.weight, forKey: "userWeight")
                        UserDefaults.standard.set($userData.height, forKey: "userHeight")
                    }
                }) {
                    Text("NEXT")
                        .font(.custom("ChalkboardSE-Bold", size: 10))
                        .foregroundColor(.blue2)
                        .padding()
                        .frame(width: 80, height: 25)
                        .background(Color.white)
                        .cornerRadius(20)
                }
                Spacer()
                Image("duck-3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)
            }
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    Page_3(userData: UserData())
}
