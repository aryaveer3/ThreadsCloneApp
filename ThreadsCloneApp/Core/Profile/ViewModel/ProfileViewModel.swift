////
////  ProfileViewModel.swift
////  ThreadsCloneApp
////
////  Created by Unthinkable-mac-0077 on 07/10/23.
////
//
//import Foundation
//import Combine
//
//class ProfileViewModel: ObservableObject{
//    @Published var currentUser: User?
//    private var cancellables = Set<AnyCancellable>()
//
//    init(){
//        setupSubscribers()
//    }
//    
//    
//    private func setupSubscribers(){
//        UserService.shared.$currentUser.sink {
//            [weak self] user in
//            self?.currentUser = user
//            print("DEBUG: User in view model from combine is \(user)")
//        }.store(in: &cancellables)
//    }
//}
