//
//  ButtonView.swift
//  LogInAndLogOut_SwiftUI
//
//  Created by Артём Латушкин on 17.06.2023.
//

import SwiftUI

struct ButtonView: View {
    
    var action: () -> Void
    let title: String
    let color: Color
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .cornerRadius(20)
        .overlay{
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 3)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(action: {}, title: "LogIn", color: .green)
    }
}
