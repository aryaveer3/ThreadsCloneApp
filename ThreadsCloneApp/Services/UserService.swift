//
//  UserService.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 07/10/23.
//

import Firebase
import FirebaseFirestoreSwift

class UserService {
    @Published var currentUser: User?
    
    static let shared = UserService()
    
    init(){
        Task{ try await fetchCurrentUser() }
    }
    
    @MainActor
    func fetchCurrentUser() async throws{
        guard let uid = Auth.auth().currentUser?.uid else {return}
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        let user = try snapshot.data(as: User.self)
        self.currentUser = user
            
    }
    
    func reset(){
        self.currentUser = nil
    }
    
    
    static func fetchUser() async throws -> [User] {
        guard let currentUid = Auth.auth().currentUser?.uid else { return [] }
        
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        //mapping data recieved to USER
        let users = snapshot.documents.compactMap({try? $0.data(as: User.self) })
         
        //returning all the users except the current
        return users.filter({$0.id != currentUid})
    }
    
    @MainActor
    func updateUserProfileImage(withImageUrl imageUrl: String) async throws{
        guard let currentId = Auth.auth().currentUser?.uid else {return}
        try await Firestore.firestore().collection("users").document(currentId).updateData([
            "profileImageUrl": imageUrl
        ])
        self.currentUser?.profileImageUrl = imageUrl
    }
}

