//
//  ExplorevView.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 22/09/23.
//

import SwiftUI

struct ExplorevView: View {
    @State private var searchText = ""
    @StateObject var viewModel = ExploreViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack
                {
                    ForEach(viewModel.users){ user in
                        VStack {
                            UserCell(user: user)
                            Divider()
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}

struct ExplorevView_Previews: PreviewProvider {
    static var previews: some View {
        ExplorevView()
    }
}
