//
//  FriendsGivingApp.swift
//  FriendsGiving
//
//  Created by Jeremy Taylor on 1/14/23.
//

import SwiftUI

@main
struct FriendsGivingApp: App {
    @StateObject var friendsVM = FriendsViewModel()
    
    var body: some Scene {
        WindowGroup {
            ListView()
                .environmentObject(friendsVM)
        }
    }
}
