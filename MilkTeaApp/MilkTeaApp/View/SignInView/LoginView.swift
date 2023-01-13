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

        
        VStack(alignment: .center, spacing: 0) {

        //Sign in
        SignUpTitleView(titlename: "Login")
            .padding(.top, 100)
            .frame(width: 300, alignment: .leading)
            


        //milk tea picture
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
        
            
            if getFaceIdTouchID(){
                Button(action: authenticateUser, label: {
                    Image(systemName: LAContext().biometryType == . faceID ? "faceid" : "touchid")
                        .font(.title)
                        .foregroundColor(.black)
                        .background(Color.red.opacity(0.3))
                        .padding()
                        .clipShape(Circle())
                })

            
                
          }//HStack
            
        }
        .padding(.bottom, 100.0)//VStack
        .animation(.easeOut)
        //ScrollView
            .ignoresSafeArea(.all,edges: .all)
        }//NavigationView
    }
    
    
    
    func getFaceIdTouchID()->Bool {
        
        let scanner = LAContext()
        if username == self.userEmail && scanner.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: .none){
            return true
        }
        print(scanner.biometryType)
        return false
    }//func getFaceIdTouchID
    
    func authenticateUser(){
        let scanncer = LAContext()
        scanncer.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Welcome \(username)") { (status, err) in
            if err != nil{
                print(err!.localizedDescription)
                return
            }
            withAnimation(.easeInOut){
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

