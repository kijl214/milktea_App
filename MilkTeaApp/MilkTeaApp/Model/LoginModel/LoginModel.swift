//
//  LoginModel.swift
//  MilkTeaApp
//
//  Created by ituser on 11/1/2023.
//

import Foundation
import SwiftUI
import LocalAuthentication
class LoginModel: ObservableObject {
    let username : String = ""
    let userEmail : String = ""
    func getFaceIdTouchID(username:String, userEmail:String)->Bool {
        let scanner = LAContext()
        if username == userEmail && scanner.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: .none){
            return true
            
        }
        return false
    }
}
