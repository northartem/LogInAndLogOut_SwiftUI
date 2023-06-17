//
//  RootView.swift
//  LogInAndLogOut_SwiftUI
//
//  Created by Артём Латушкин on 16.06.2023.
//

import SwiftUI

struct RootView: View {
    
    @EnvironmentObject private var userSettings: UserSettings
    
    var body: some View {
        Group {
            if userSettings.user.isLoggedIn {
                ContentView()
            } else {
                LoginView()
            }
        }
        .environmentObject(userSettings)
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
