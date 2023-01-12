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
        VStack(spacing:40){
            //button to Map page
        NavigationLink(
            destination: MapView(),
            label: {
                Text("About Hong Kong Milk Tea")
            })
            .padding()
            .foregroundColor(.black)
            .navigationBarTitle("BACK", displayMode: .inline)
            .navigationBarHidden(true)
            .background(Color.blue.opacity(0.5))
            .cornerRadius(10)
            .shadow(color: .black.opacity(0.5), radius: 5, x: 0, y: 1)
            
        //button to Recommend HK-style Milk Tea
        NavigationLink(
            destination: DiscussionView(),
            label: {
                Text("Discussion about HK milk tea")
            })
            .padding()
            .foregroundColor(.black)
            .navigationBarTitle("BACK", displayMode: .inline)
            .navigationBarHidden(true)
            .background(Color.green.opacity(0.5))
            .cornerRadius(10)
            .shadow(color: .black.opacity(0.5), radius: 5, x: 0, y: 1)
            
            
            
        
        //button to AR
        NavigationLink(
            destination: MilkTeaARView(),
            label: {
                Text("Let Play")
                    .bold()
                    .padding()
            })
            .padding()
            .padding()
            .foregroundColor(.white)
            .navigationBarTitle("BACK", displayMode: .inline)
            .navigationBarHidden(true)
            .background(Color.red)
            .cornerRadius(10)
            .shadow(color: .black.opacity(0.5), radius: 5, x: 0, y: 1)
            
            
        
            
        //button to signUp page
        Button(action: {self.log_status = false}, label: {
            Text("Log out")
        })
        .padding()
        .scaledToFit()
        .foregroundColor(.white)
        .background(Color.black)
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.5), radius: 5, x: 0, y: 1)
        

                
        }//VStack
        
    }
}

struct MainButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MainButtonView()
    }
}

