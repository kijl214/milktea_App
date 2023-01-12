//
//  SendButtonView.swift
//  MilkTeaApp
//
//  Created by ituser on 12/1/2023.
//

import SwiftUI

struct SendButtonView: View {
    @EnvironmentObject var dataModel:DataModel
    @State var newChat  = ""
    var body: some View {
        HStack{
            TextField("Write your idea",text: $newChat)
                .padding(.horizontal)
                .padding()
                .foregroundColor(.black)
                .background(Color.black.opacity(0.2))
                .cornerRadius(5)
            
            Button(action: {dataModel.addChat(newChat: newChat)}, label: {
                Text("SEND")
                    .padding(.horizontal)
                    .padding()
                    .foregroundColor(.blue)
                    .background(Color.blue.opacity(0.3))
                    .cornerRadius(5)
            })
        }//HStack
        .padding(.horizontal)
    }
}

struct SendButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SendButtonView()
    }
}
