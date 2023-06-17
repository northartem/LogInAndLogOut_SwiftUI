//
//  DataManager.swift
//  LogInAndLogOut_SwiftUI
//
//  Created by Артём Латушкин on 17.06.2023.
//

import SwiftUI

class DataManager {
    
    static let shared = DataManager()
    
    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func save(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func load() -> User {
        guard let user = try? JSONDecoder().decode(
            User.self,
            from: userData ?? Data()
        ) else { return User()}
        return user
    }
    
    func delete(userManager: UserSettings) {
        userManager.user.isLoggedIn = false
        userManager.user.name = ""
        userData = nil
    }
}
