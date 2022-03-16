//
//  UIApplication.swift
//  FitnessHub
//
//  Created by CS on 3/16/22.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
