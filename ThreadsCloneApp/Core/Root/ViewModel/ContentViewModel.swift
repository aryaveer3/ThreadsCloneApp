//
//  ContentViewModel.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 05/10/23.
//

import Foundation
import  Combine
import Firebase

class ContentViewModel: ObservableObject {
    @Published var userSession : FirebaseAuth.User?
    private var cancellables = Set<AnyCancellable>()
    
    init(){
        setupSubscriber()
    }
    
    private func setupSubscriber(){
        AuthService.shared.$userSession.sink {
            [weak self] userSession in
            self?.userSession = userSession
        }.store(in: &cancellables)
    }
}

