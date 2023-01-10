//
//  MainView.swift
//  MilkTeaApp
//
//  Created by itst on 9/1/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        HStack{
        VStack{
            //button to signUp page
            Button(action: {}, label: {
                Text("Back")
            })
                .frame(alignment: .leading)
            //button to Map page
            Button(action: {}, label: {
                Text("About Hong Kong Milk Tea")
            })
                .frame(alignment: .bottom)
        }//VStack
            
        }//HStack
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
