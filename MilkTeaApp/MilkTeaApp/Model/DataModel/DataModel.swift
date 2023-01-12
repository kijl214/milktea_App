//
//  Store.swift
//  MilkTeaApp
//
//  Created by ituser on 12/1/2023.
//

import SwiftUI
import Firebase
import FirebaseFirestore

class  DataModel: ObservableObject {
    @Published var chat : [Chat] = []
    @AppStorage("stored_user") var  userEmail = "123"
    init() {
        Data()
    }
    private var db = Firestore.firestore()
    func Data() {
        chat.removeAll()
        db.collection("chat").getDocuments{querySnapshot, error in
            guard error == nil else{
                print(error!.localizedDescription)
                return
            }
            
            
            if let querySnapshot = querySnapshot {
                for document in querySnapshot.documents{
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let user = data["user"] as? String ?? ""
                    let chat = data["chat"] as? String ?? ""
                    
                    let chatone = Chat(id: id, user: user, chat: chat)
                    self.chat.append(chatone)
                }
            }
        }
    }//fun Data()
    
    func addChat(newChat:String) {
        db.collection("chat").document(newChat).setData(["user":userEmail,"chat":newChat,"id":10]){error in
            if let error = error{
                print(error.localizedDescription)
            }
        }
    }
    
    
    
}