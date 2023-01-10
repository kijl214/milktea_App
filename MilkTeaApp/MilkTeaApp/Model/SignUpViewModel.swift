//
//  SignInVM.swift
//  MilkTeaApp
//
//  Created by itst on 9/1/2023.
//

import SwiftUI
import Firebase
import GoogleSignIn

class SignUpViewModel: ObservableObject {
    @Published var isLogin: Bool = false
    
    func signUpGoogle() {
        
        guard let clientId = FirebaseApp.app()?.options.clientID else {return}
        
        let signInconfig = GIDConfiguration(clientID: clientId)
        
        GIDSignIn.sharedInstance.configuration = signInconfig
        GIDSignIn.sharedInstance.signIn(withPresenting: ApplicationUtility.rootViewController) {
            [self] result, err in
            
            
            
            if let error = err{
                print(error.localizedDescription)
                return
            }
            guard
                let idToken = result?.user.idToken,
                let accessToken = result?.user.accessToken
//                let authentication = user?.authentication,
//                let idToken = authentication.idToken
            else{return}
            
            let credential = GoogleAuthProvider.credential(withIDToken: idToken.tokenString, accessToken: accessToken.tokenString)
            
            Auth.auth().signIn(with: credential){result, error in
                if let err = error {
                    print(err.localizedDescription)
                    return
                }
                
                guard let user = result?.user else{return}
                print(user.displayName)
                isLogin.toggle()
            }
        }
        //GIDSignIn.sharedInstance.signIn(with: signInconfig, presenting: ApplicationUtility.rootViewController)
        
    }
    
    
}
