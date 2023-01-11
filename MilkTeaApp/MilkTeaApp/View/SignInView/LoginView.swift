//
//  LoginView.swift
//  MilkTeaApp
//
//  Created by ituser on 11/1/2023.
//

import SwiftUI
import LocalAuthentication

struct LoginView: View {
    //MARK - save
    @AppStorage("stored_user") var  userEmail = "123"
    @AppStorage("log_status") var log_status = false
    @State var username = ""
    @State var password = ""
    var body: some View {
        
        NavigationView{
            ScrollView {
        VStack(alignment: .center, spacing: 0) {

        //Sign in
        SignUpTitleView(titlename: "Login")
            .padding(.vertical)
            .frame(width: 300, alignment: .leading)
        //MilkteaPicture
        Image("milktea")

        //user
        HStack{
            Image(systemName: "envelope")
                .font(.title3)
                .foregroundColor(.black)
            TextField("Email",text: $username)
                .autocapitalization(.none)

        }//HStack
        .padding()
        .background(Color.black.opacity(0.15))
        .cornerRadius(12)
        .padding(.horizontal)
        
        //password
        HStack{
            Image(systemName: "lock")
                .font(.title3)
                .foregroundColor(.black)
            SecureField("PassWord",text: $password)
                .autocapitalization(.none)
        }//HStack
        .padding()
        .background(Color.black.opacity(0.15))
        .cornerRadius(12)
        .padding(.horizontal)
        .padding(.top)
        
        HStack(spacing:10){
        //Login button
            Button(action: authenticateUser, label: {
                Text("Login")
            })
            .padding()
            .background(Color.black)
            .cornerRadius(12)
            .foregroundColor(.white)
            .padding(.top)
            
            
            if getFaceIdTouchID(){
                Button(action: authenticateUser, label: {
                    Image(systemName: LAContext().biometryType == . faceID ? "faceid" : "touchid")
                        .font(.title)
                        .foregroundColor(.black)
                        .background(Color.green.opacity(0.15))
                        .padding()
                        .clipShape(Circle())
                })
            }
            
                
          }//HStack
            
        }//VStack
        .animation(.easeOut)
        }//ScrollView
        }//NavigationView
        
    }
    
    
    func getFaceIdTouchID()->Bool {
        let scanner = LAContext()
        if username == userEmail && scanner.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: .none){
            return true
            
        }
        return false
    }//func getFaceIdTouchID
    
    func authenticateUser(){
        let scanncer = LAContext()


        scanncer.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "To Unlock \(username)") { (status, err) in
            if err != nil{
                print(err!.localizedDescription)
                return
            }
            withAnimation(.easeOut) {
                self.log_status = true
            }
        }
    
    }
    
}




struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
