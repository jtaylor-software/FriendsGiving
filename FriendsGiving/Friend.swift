//
//  Friend.swift
//  FriendsGiving
//
//  Created by Jeremy Taylor on 1/14/23.
//

import Foundation

struct Friend: Identifiable, Codable {
    var id: String?
    var name = ""
    var bringing = ""
    var notes = ""
}
