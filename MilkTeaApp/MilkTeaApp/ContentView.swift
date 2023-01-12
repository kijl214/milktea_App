//
//  ContentView.swift
//  MilkTeaApp
//
//  Created by itst on 9/1/2023.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    //MARK - let
    @AppStorage("log_status") var log_status = false
    
    var body: some View {
        ZStack{if log_status{
            MainView()
        }
        else{
            SignUpPageView()

        }
        }//ZStack
    }
}



#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
