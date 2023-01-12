//
//  MainView.swift
//  MilkTeaApp
//
//  Created by itst on 9/1/2023.
//

import SwiftUI

struct MainView: View {
    @AppStorage("stored_user") var  userEmail = "123"
    //MARK - body
    var body: some View {
        NavigationView{
        VStack{
            Text("Welcome! \(userEmail).")
            
        MainButtonView()

            }//VStack
            
        }//NavigationView
        .navigationBarTitle("", displayMode: .inline)
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
