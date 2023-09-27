//
//  ThreadsTextFieldModifier.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 22/09/23.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier{
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(16)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
    }
    
 
}
