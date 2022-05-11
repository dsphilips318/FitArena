//
//  WorkoutsViewModel.swift
//  FitArena
//
//  Created by CS on 3/16/22.
//

import Foundation

class WorkoutsViewModel: ObservableObject {
    
    @Published var menuOpened: Bool = false
    @Published var searchText: String = ""
    
}
