//
//  ProfielHeaderView.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 09/10/23.
//

import SwiftUI

struct ProfielHeaderView: View {
    var user: User?
    
    init(user: User?) {
        self.user = user
    }
    
    var body: some View {
        HStack(alignment: .top){
            VStack(alignment: .leading, spacing: 12 ){
                //fullname and username
                VStack(alignment: .leading, spacing: 4 ){
                    Text(user?.fullname ?? "")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text(user?.username ?? "")
                        .font(.subheadline)
                }
                
                if let bio = user?.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
                Text("2 followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            CirclularProfileImageView(user: user, size: .medium)
        }
        
    }
}

struct ProfileHeaderView_Previews: PreviewProvider{
    static var previews: some View{
        ProfielHeaderView(user: dev.user)
    }
}

//#Preview {
//
//}
