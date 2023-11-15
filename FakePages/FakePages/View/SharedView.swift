//
//  SharedView.swift
//  AppPages
//
//  Created by Claudia De Luca on 13/11/23.
//

import SwiftUI

struct SharedView: View {
    @State private var searchText = ""
    @State private var isActivePlus = false
    @State private var isActiveMenu = false
    var viewOption = OptionMenuModel()
    
    var body: some View {
        NavigationStack {
            
            VStack {
                Image(systemName: "folder.badge.person.crop.fill")
                    .resizable()
                    .frame(width: 75.0, height: 50.0)
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(Color.gray)
                
                Text("No Shared Files")
                    .font(.title2)
                    .fontWeight(.semibold)
                Text("Shared files will appeare here.")
                    .foregroundColor(Color.gray)
            }
            .navigationTitle("Shared")
            .navigationBarItems(trailing:
                                    HStack {
                Image(systemName: "plus")
                    .foregroundColor(.secondary)
                showOptionMenu(OptionMenu(imageOM: "", nameOM: ""))
            })
        }
        .searchable(text: $searchText)
    }
}


#Preview {
    SharedView()
}
