//
//  MainView.swift
//  MilkTeaApp
//
//  Created by itst on 9/1/2023.
//

import SwiftUI

struct MainView: View {
    //MARK - body
    var body: some View {
        NavigationView{
        VStack{
        MainButtonView()
        MilkTeaARView()
            .ignoresSafeArea(.all,edges: .all)
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
