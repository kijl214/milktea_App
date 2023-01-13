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
        NavigationView{
        VStack(alignment: .center, spacing: 0) {
            //Title Name
            Text("HK-Style Milk Tea Simulator")
                .font(.system(size: 40))
                .foregroundColor(.blue)
            //Milk Tea Icon
            Image("milktea")
        
            
            
            //Sign up title
            SignUpTitleView(titlename: "Quick Sign Up")
                .padding(.vertical)
                .frame(width: 300, alignment: .leading)
                
            //Sign up button
            SignUpItemButtonView()
                .padding()
                .background(Color.gray.opacity(0.2))
            Text("Have account?")
                .padding(.horizontal)
            NavigationLink(
                destination: LoginView(),
                label: {
                    Text("Click here")
                        .font(.system(size: 15))
                })
                .scaledToFit()
                .colorMultiply(.blue)
                .navigationTitle("Sign In")
                .navigationBarHidden(true)
                .navigationBarTitle("", displayMode: .inline)

            
            
            
        }//VStack
        }//NavigationView
    }
}

struct SignUpPageView_Previews: PreviewProvider {
    static var previews: some View {

            SignUpPageView()
        
    }
}
