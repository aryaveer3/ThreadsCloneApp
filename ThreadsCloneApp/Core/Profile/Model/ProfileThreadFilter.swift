//
//  ProfileThreadFilter.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 04/10/23.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable{
    case thread
    case replies
    
    var title: String{
        switch self {
        case .thread: return "Threads"
        case .replies: return "Replies"
        }
    }
    
    var id: Int{
        return self.rawValue
    }
}
