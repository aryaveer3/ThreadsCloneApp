//
//  ExplorevView.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 22/09/23.
//

import SwiftUI

struct ExplorevView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack
                {
                    ForEach(0...10, id:\.self){ user in
                        VStack {
                            UserCell()
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
