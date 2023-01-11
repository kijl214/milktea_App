//
//  SignUpPageView.swift
//  MilkTeaApp
//
//  Created by itst on 9/1/2023.
//

import SwiftUI

struct SignUpPageView: View {
    @EnvironmentObject var signupVM: SignUpViewModel
    //MARK - body
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            //Title Name
            Text("Hong Kong Style Milk Tea Simulator")
                .font(.title2)
                .foregroundColor(.blue)
            //Milk Tea Icon
            Image("milktea")
            //Sign up title
            SignUpTitleView(titlename: "Quick Sign Up")
                .padding(.vertical)
                .frame(width: 300, alignment: .leading)
            //Sign up button
            SignUpItemButtonView()
            
            
            
            
        })//VStack
        
    }
}

struct SignUpPageView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPageView()
    }
}
