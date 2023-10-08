//
//  ExploreViewModel.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 08/10/23.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    
    init(){
        Task{try await fetchUser()}
    }
    
    @MainActor
    private func fetchUser() async throws{
        self.users = try await UserService.fetchUser()
    }
    
}
