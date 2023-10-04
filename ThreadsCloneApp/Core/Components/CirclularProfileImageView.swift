//
//  CirclularProfileImageView.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 27/09/23.
//

import SwiftUI

struct CirclularProfileImageView: View {
    var body: some View {
        Image("person1")
            .resizable()
            .scaledToFit()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

struct CirclularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CirclularProfileImageView()
    }
}
