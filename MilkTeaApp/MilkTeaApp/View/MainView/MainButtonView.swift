//
//  MainButtonView.swift
//  MilkTeaApp
//
//  Created by ituser on 11/1/2023.
//
import SwiftUI

struct MainButtonView: View {
    @AppStorage("log_status") var log_status = false
    
    var body: some View {
        VStack{
            HStack(spacing: 40){
            //button to signUp page
            Button(action: {self.log_status = false}, label: {
                Text("Log out")
            })
            .scaledToFit()
            .colorMultiply(.black)
            
            //button to Map page
            NavigationLink(
                destination: MapView(),
                label: {
                    Text("About Hong Kong Milk Tea")
                })
                .scaledToFit()
                .colorMultiply(.blue)
                .navigationTitle("BACK")

            
        }//HStack
                
                
        }//VStack
        
    }
}

struct MainButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MainButtonView()
    }
}

