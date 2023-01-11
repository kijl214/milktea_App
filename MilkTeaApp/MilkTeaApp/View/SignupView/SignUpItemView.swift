//
//  SignUpItemView.swift
//  MilkTeaApp
//
//  Created by itst on 9/1/2023.
//

import SwiftUI

struct SignUpItemView: View {
    // MARK: - let
    let backgroundColor: String
    let logo:String
    let name:String
    // MARK: - body
    var body: some View {
        ZStack{
            
            HStack{
            Image(logo)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40, alignment: .center)
            Text("Sign In with \(name)")
                .foregroundColor(.gray)
                .bold()
            }//HStack
        }//ZStack
        .frame(width: 210, height: 45, alignment: .center)
        .background(Color(backgroundColor)
                        .cornerRadius(10)
                        .shadow(color: .black.opacity(0.5), radius: 5, x: 0, y: 1)
        )//background
    }
}


struct SignUpItemView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .center, spacing: 10){
        SignUpItemView(backgroundColor: "white", logo: "google", name: "Google")
        SignUpItemView(backgroundColor: "white", logo: "apple", name: "Apple")
        }
        
    }
}
