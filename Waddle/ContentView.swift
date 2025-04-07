//
//  ContentView.swift
//  Waddle
//
//  Created by Vira Fitriyani on 25/03/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var userData = UserData()
    @State private var showAlert: Bool = false
    @State private var navigate: Bool = false

    
    var isButtonDisabled: Bool {
        userData.name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("BG")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 20) {
                    Text("WADDLE")
                        .font(.custom("ChalkboardSE-Bold", size: 50))
                        .foregroundColor(.black)
                        .padding(.top, 50)
                        .overlay(
                            Text("WADDLE")
                                .font(.custom("ChalkboardSE-Bold", size: 50))
                                .foregroundColor(.white)
                                .padding(.top, 50)
                                .offset(x: -2, y: -1)
                        )
                    
                    Image("duck")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .padding(.top, 50)
                    
                    VStack(spacing: 10) {
                        Text("Hi! What's your name?")
                            .font(.custom("ChalkboardSE-Regular", size: 18))
                            .foregroundColor(.white)
                        
                        TextField("Type here", text: $userData.name)
                            .padding()
                            .frame(width: 325, height: 40)
                            .background(Color.white.opacity(0.8))
                            .cornerRadius(30)
                            .multilineTextAlignment(.center)
                            .font(.custom("ChalkboardSE-Regular", size: 15))
                            .foregroundColor(.white)
                        
                        if showAlert {
                            Text("You must fill your name first!")
                                .font(.custom("ChalkboardSE-Regular", size: 15))
                                .foregroundColor(.red)
                        }
                    }
                    .padding(.top, -50)
                    
                    NavigationLink(destination: Page_3(userData: userData), isActive: $navigate){
                        EmptyView()
                    }
                    .hidden()
                    
                    Button(action: {
                        if isButtonDisabled {
                            showAlert = true
                        } else {
                            showAlert = false
                            UserDefaults.standard.set($userData.name, forKey: "userName")
                            navigate = true
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
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
