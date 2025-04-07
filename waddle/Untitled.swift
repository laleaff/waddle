//
//  Untitled.swift
//  waddle
//
//  Created by Alifa Reppawali on 26/03/25.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        
        let a, r, g, b: Double
        switch hex.count {
        case 6: // RGB (no alpha)
            (a, r, g, b) = (1, Double((int >> 16) & 0xFF) / 255, Double((int >> 8) & 0xFF) / 255, Double(int & 0xFF) / 255)
        case 8: // RGBA
            (a, r, g, b) = (Double((int >> 24) & 0xFF) / 255, Double((int >> 16) & 0xFF) / 255, Double((int >> 8) & 0xFF) / 255, Double(int & 0xFF) / 255)
        default:
            (a, r, g, b) = (1, 0, 0, 0) // Default to black if invalid hex
        }

        self.init(.sRGB, red: r, green: g, blue: b, opacity: a)
    }
}

struct BackgroundGradientView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color(hex: "#396F86"), Color(hex: "#9ECFE1")]),
            startPoint: .top,
            endPoint: .bottom
        )
        .ignoresSafeArea()
    }
}

extension Color {
    static let lightGradient = LinearGradient(
        gradient: Gradient(colors: [Color(hex: "#EEFAFF"), Color(hex: "#9ECFE1")]),
        startPoint: .top,
        endPoint: .bottom
    )
}

struct BoyGradientView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color(hex: "#396F86"), Color(hex: "#9ECFE1")]),
            startPoint: .top,
            endPoint: .bottom
        )
        .ignoresSafeArea()
    }
}

struct GirlGradientView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color(hex: "#396F86"), Color(hex: "#9ECFE1")]),
            startPoint: .top,
            endPoint: .bottom
        )
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundGradientView()
}
