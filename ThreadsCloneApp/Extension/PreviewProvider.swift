//
//  PreviewProvider.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 08/10/23.
//

import Foundation
import SwiftUI

extension PreviewProvider{
    
    static var dev: DeveloperPreview{
        return DeveloperPreview.shared
    }
    
}

class DeveloperPreview{
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "John B. Doe", email: "johnDev@gmail.com", username: "johnDev1")
}
