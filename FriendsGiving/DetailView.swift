//
//  DetailView.swift
//  FriendsGiving
//
//  Created by Jeremy Taylor on 1/14/23.
//

import SwiftUI

struct DetailView: View {
    @State var friend: Friend
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var friendsVM: FriendsViewModel
    
    var body: some View {
        VStack(alignment:.leading) {
            Text("Name:")
                .bold()
            TextField("name", text: $friend.name)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom)
            
            Text("Bringing:")
                .bold()
            TextField("bringing", text: $friend.bringing)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom)
            
            Text("Notes:")
                .bold()
            TextField("notes", text: $friend.notes)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom)
            
            Spacer()
            
        }
        .padding()
        
        .toolbar {
            ToolbarItem(placement: .cancellationAction) {
                Button("Cancel") {
                    dismiss()
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Save") {
                    friendsVM.saveFriend(friend: friend)
                    dismiss()
                }
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DetailView(friend: Friend())
                .environmentObject(FriendsViewModel())
        }
    }
}
