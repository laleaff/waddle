//
//  Page_6.swift
//  Waddle
//
//  Created by Vira Fitriyani on 07/04/25.
//

import SwiftUI

struct Page_6: View {
    
    let name = UserDefaults.standard.string(forKey: "userName") ?? ""
    let weight = UserDefaults.standard.string(forKey: "userWeight") ?? ""
    let height = UserDefaults.standard.string(forKey: "userHeight") ?? ""

    
    var body: some View {
        Text("Hello, \(name)!")
    }
}

#Preview {
    Page_6()
}
