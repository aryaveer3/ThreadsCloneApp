//
//  RegistrationViewModel.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 05/10/23.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    
    //Published is letting these vars availabel ebvrywher
    @Published  var email = ""
    @Published  var password = ""
    @Published  var name = ""
    @Published  var username = ""
    
    @MainActor
    func createUser() async throws{
            try await AuthService.shared.createUser(withEmail: email, password: password, fullname: name, username: username)
    }
}
