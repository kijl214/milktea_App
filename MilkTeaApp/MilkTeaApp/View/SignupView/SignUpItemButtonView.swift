//
//  SignInItemButtonView.swift
//  MilkTeaApp
//
//  Created by itst on 9/1/2023.
//

import Foundation
import SwiftUI

struct SignUpItemButtonView: View {
    //MARK - let
    @EnvironmentObject var signupVM: SignUpViewModel
    var body: some View {

        VStack(alignment: .center, spacing: 10){
            //Google
            Button(action: {signupVM.signUpGoogle()}, label: {
                SignUpItemView(backgroundColor: "white", logo: "google", name: "Google")
            })
            //Apple
            Button(action: {}, label: {
                SignUpItemView(backgroundColor: "white", logo: "apple", name: "Apple")
            })
        }//VStack
    }
}


struct SignUpItemButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpItemButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
