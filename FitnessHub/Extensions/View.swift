//
//  View.swift
//  FitnessHub
//
//  Created by CS on 3/15/22.
//

import Foundation
import SwiftUI

extension View {
    func navigationBarModifier(backgroundColor: UIColor, foregroundColor: UIColor, largeTextAttributesColor: UIColor, tintColor: UIColor? = nil, hideseperator: Bool = false) -> some View {
        self.modifier(NavigationBarCustomModifier(backgroundColor: backgroundColor, foregroundColor: foregroundColor, largeTextAttributesColor: largeTextAttributesColor, tintColor: tintColor, hideseperator: hideseperator))
    }
}

struct NavigationBarCustomModifier: ViewModifier {
    typealias Body = Swift.Never
    
    
    init(backgroundColor: UIColor, foregroundColor: UIColor, largeTextAttributesColor: UIColor, tintColor: UIColor? = nil, hideseperator: Bool = false) {

        let appearance = UINavigationBarAppearance()

        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = backgroundColor
        appearance.titleTextAttributes = [.foregroundColor: foregroundColor]
        appearance.largeTitleTextAttributes = [.foregroundColor: foregroundColor]

        if hideseperator {
            UINavigationBar.appearance().tintColor = .clear
        }

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().tintColor = .white

        if let tintColor = tintColor {
            UINavigationBar.appearance().tintColor = tintColor
        }

        func body(content: Self.Content) -> some View {
            content
        }
    }
}
