//
//  SearchBarView.swift
//  FitArena
//
//  Created by CS on 3/16/22.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(
                    searchText.isEmpty ? Color.theme.secondaryText : Color.theme.secondary
                )
            
            TextField("Search by name...", text: $searchText)
                .foregroundColor(Color.theme.secondaryText)
                .disableAutocorrection(true)
                .overlay(
                    Image(systemName: "xmark")
                        .padding()
                        .offset(x: 10)
                        .foregroundColor(Color.theme.secondary)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                            searchText = ""
                        }
                    
                    ,alignment: .trailing
                )//: overlay
        } //: HStack
        .padding()
        .font(.headline)
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.theme.background)
                .shadow(
                    color: Color.theme.secondaryText.opacity(0.3),
                    radius: 10, x: 0, y: 0)
        )
        .padding()
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SearchBarView(searchText: .constant(""))
                .preferredColorScheme(.light)
                .previewLayout(.sizeThatFits)
            
            SearchBarView(searchText: .constant(""))
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
