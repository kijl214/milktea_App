//
//  SwiftUIView.swift
//  MilkTeaApp
//
//  Created by itst on 9/1/2023.
//

import SwiftUI

struct SignUpTitleView: View {
    // MARK - let
    let titlename: String
    // MARK - body
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 0, content: {
            Text(titlename)
                .font(.body)
                .padding(.horizontal,15) 
        }
        )//HStack
    }//body
}


struct SignUpTitleView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpTitleView(titlename: "Sign Up")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
