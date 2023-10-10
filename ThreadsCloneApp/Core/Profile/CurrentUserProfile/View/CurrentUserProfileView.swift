//
//  CurrentUserProfileView.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 08/10/23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    @StateObject var viewModel = CurrentUserProfileViewModel()
    @State private var showEditProfile = false
    private var currentUser: User?{
        return viewModel.currentUser
    }
    
    var body: some View {
        NavigationStack{
            ScrollView (showsIndicators: false){
                //bio and stats
                VStack(spacing: 20){
                    
                    ProfielHeaderView(user: currentUser)
                    
                        Button{
                            showEditProfile.toggle()
                        } label: {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundStyle(.black)
                                .frame(width: 352, height: 32)
                                .background(.white)
                                .cornerRadius(8)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color(.systemGray4), lineWidth:1)
                                }
                        }
                    
                    // user content list view
                    UserContentListView()
                    
                    
                }
            }
            .sheet(isPresented: $showEditProfile, content: {
                if let user = currentUser{
                    EditProfileView(user: user)
                }                    
            })
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        AuthService.shared.signOut()
                    }label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
