//
//  UserCell.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 27/09/23.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack{
            CirclularProfileImageView()
            VStack{
                Text("johnjoe_1")
                    .fontWeight(.semibold)
                
                Text("John F Joe")
            }
            .font(.footnote)
            
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth:1)
                }
        }
        .padding(.horizontal)
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
