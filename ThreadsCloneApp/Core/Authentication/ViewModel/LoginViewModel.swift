//
//  LoginViewModel.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 05/10/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    //Published is letting these vars availabel ebvrywher
    @Published  var email = ""
    @Published  var password = ""

    
    @MainActor
    func loginUser() async throws{
            try await AuthService.shared.login(withEmail: email, password: password)
    }
}
