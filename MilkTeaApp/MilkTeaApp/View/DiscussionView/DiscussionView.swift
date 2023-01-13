//
//  DiscussionView.swift
//  MilkTeaApp
//
//  Created by ituser on 12/1/2023.
//

import SwiftUI

struct DiscussionView: View {
    @EnvironmentObject var dataModel : DataModel
    @State private var showPopup = false
    var body: some View {
        NavigationView{
            List(dataModel.chat, id: \.id){chat in
                Text("\(chat.user):  \(chat.chat)")
            }.navigationTitle("Chat")
            .navigationBarItems(trailing: Button(action: {showPopup.toggle()}, label: {
                Image(systemName: "plus")
            }))
            .sheet(isPresented: $showPopup) {
                SendButtonView()
            }
        }
    }
}

struct DiscussionView_Previews: PreviewProvider {
    static var previews: some View {
        DiscussionView()
            .environmentObject(DataModel())
    }
}
