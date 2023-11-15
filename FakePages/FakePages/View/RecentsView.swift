//
//  RecentsView.swift
//  AppPages
//
//  Created by Claudia De Luca on 13/11/23.
//

import SwiftUI

struct RecentsView: View {
    
    @State private var searchText = ""
    @State private var isActivePlus = false
    @State private var isActiveMenu = false
    
    var viewOption = OptionMenuModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "clock.fill")
                    .resizable()
                    .frame(width: 50.0, height: 50.0)
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(Color.gray)
                
                Text("No Recents")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("Recently opened  documents will appear here.")
                    .foregroundColor(Color.gray)
            }
            .navigationTitle("Pages Recents")
            .navigationBarItems(trailing:
                                    HStack {
                Button(action: {
                    isActivePlus = true
                }, label: {
                    Image(systemName: "plus")
                }).confirmationDialog("", isPresented: $isActivePlus) {
                    Button(action: {
                        print("ciao") //action del choose a template
                    }, label: {
                        Text("Choose a Template")
                    })
                    
                    Button(action: {
                        print("ciao") //action del start writing
                    }, label: {
                        Text("Start Writing")
                    })
                }
                showOptionMenu(OptionMenu(imageOM: "", nameOM: ""))
            })
            
        }.searchable(text: $searchText)
    }
}

#Preview {
    RecentsView()
}
