//
//  User.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 07/10/23.
//

import Foundation

struct User: Identifiable, Codable{
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
