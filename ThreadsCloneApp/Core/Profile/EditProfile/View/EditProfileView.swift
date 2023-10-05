//
//  EditProfileView.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 05/10/23.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile = false

    var body: some View {
            
        NavigationStack{
            ZStack{
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.bottom, .horizontal])
                
                VStack{
                    
                    HStack{
                        VStack(alignment: .leading){
                            Text("Name")
                                .fontWeight(.semibold)
                            
                            Text("Charles K. Dorma")
                        }
                        Spacer()
                        
                        CirclularProfileImageView()
                    }
                    
                    Divider()
                    
                    //bio field
                    

                    VStack(alignment: .leading){
                        Text("Bio")
                            .fontWeight(.semibold)
                        
                        TextField("Enter your bio...",text: $bio, axis: .vertical)
                        
                    }

                    Divider()
                    
                    //bio field
                    

                    VStack(alignment: .leading){
                        Text("Link")
                            .fontWeight(.semibold)
                        
                        TextField("Add your link...",text: $link, axis: .vertical)
                        
                    }
                    
                    Divider()
                    
                    
                    Toggle("Private profile", isOn: $isPrivateProfile)
                    
                    
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
                .padding()

                
 
            }
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button("Cancel"){
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
                
                ToolbarItem(placement: .topBarTrailing){
                    Button("Done"){
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    EditProfileView()
}
