//
//  ContentView.swift
//  LogInAndLogOut_SwiftUI
//
//  Created by Артём Латушкин on 16.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userSettings: UserSettings
    
    var body: some View {
        VStack {
            Text("Hello \(userSettings.user.name)!")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            ButtonView(
                action: timer.startTimer,
                title: timer.buttonTitle,
                color: .green
            )
            Spacer()
            ButtonView(
                action: {
                    DataManager.shared.delete(userManager: userSettings)
                },
                title: "LogOut",
                color: .red)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
