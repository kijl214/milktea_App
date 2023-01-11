//
//  ContentView.swift
//  MilkTeaApp
//
//  Created by itst on 9/1/2023.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    var body: some View {
        //Sign Up Page
        SignUpPageView()
        
    }
}



#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
