//
//  MapView.swift
//  MilkTeaApp
//
//  Created by ituser on 11/1/2023.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        NavigationView{
            VStack{
            Image("milktea")
            Text("The feature of Hong Kong-style Milk Tea is the filter bags for tea. The tea bag's colour and shape are very similar to stockings after prolonged use, so Hong Kong-style milk tea is also known as stocking milk tea.")
            }
        }
        .ignoresSafeArea(.all,edges: .all)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
