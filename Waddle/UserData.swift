//
//  UserData.swift
//  Waddle
//
//  Created by Vira Fitriyani on 07/04/25.
//

import Foundation
import SwiftUI

class UserData: ObservableObject {
    @Published var name: String {
        didSet {
            UserDefaults.standard.set(name, forKey: "userName")
        }
    }
    
    @Published var weight: String {
        didSet {
            UserDefaults.standard.set(weight, forKey: "userWeight")
        }
    }
    
    @Published var height: String {
        didSet {
            UserDefaults.standard.set(height, forKey: "userHeight")
        }
    }
    
    init() {
        self.name = UserDefaults.standard.string(forKey: "userName") ?? ""
        self.weight = UserDefaults.standard.string(forKey: "userWeight") ?? ""
        self.height = UserDefaults.standard.string(forKey: "userHeight") ?? ""
    }
}
