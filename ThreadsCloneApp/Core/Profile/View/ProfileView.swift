//
//  ProfileView.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 22/09/23.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewModel()
    @State private var selectedFilter: ProfileThreadFilter = .thread
    @Namespace var animation
    
    private var filterBarWidth: CGFloat{
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 20
    }
    var body: some View {
        NavigationStack{
            ScrollView (showsIndicators: false){
                //bio and stats
                VStack(spacing: 20){
                    HStack(alignment: .top){
                        VStack(alignment: .leading, spacing: 12 ){
                            //fullname and username
                            VStack(alignment: .leading, spacing: 4 ){
                                Text("Charles Hudson")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                
                                Text("Charles_Hudson")
                                    .font(.subheadline)
                            }
                            
                            Text("SWE for ISRO")
                                .font(.footnote)
                            
                            Text("2 followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        CirclularProfileImageView()
                    }
                    
                    Button{
                        
                    } label: {
                        Text("Follow")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .frame(width: 352, height: 32)
                            .background(.black)
                            .cornerRadius(8)
                    }
                    
                    // user content list view
                    VStack{
                        HStack{
                            ForEach(ProfileThreadFilter.allCases){
                                filter in
                                VStack{
                                    Text(filter.title)
                                        .font(.subheadline)
                                        .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                    if selectedFilter == filter{
                                        Rectangle()
                                            .foregroundColor(.black)
                                            .frame(width: filterBarWidth, height:1)
                                            .matchedGeometryEffect(id: "item", in: animation)
                                    }
                                    else{
                                        Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: filterBarWidth, height:1)
                                    }
                                }
                                .onTapGesture{
                                    withAnimation(.spring()){
                                        selectedFilter = filter
                                    }
                                }
                            }
                        }
                        LazyVStack{
                            ForEach(0...10, id:\.self){
                                thread in
                                ThreadCell()
                            }
                        }
                    }
                    .padding(.vertical,8)
                    
                    
                }
            }
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

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
