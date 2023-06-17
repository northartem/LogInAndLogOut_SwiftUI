//
//  UserSettings.swift
//  LogInAndLogOut_SwiftUI
//
//  Created by Артём Латушкин on 16.06.2023.
//

import Foundation

final class UserSettings: ObservableObject {
    
    @Published var user = User()
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}

struct User: Codable {
    var isLoggedIn = false
    var name = ""
}
