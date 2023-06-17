//
//  LogInAndLogOut_SwiftUIApp.swift
//  LogInAndLogOut_SwiftUI
//
//  Created by Артём Латушкин on 16.06.2023.
//

import SwiftUI

@main
struct LogInAndLogOut_SwiftUIApp: App {
    
    private let user = DataManager.shared.load()
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(UserSettings(user: user))
        }
    }
}
