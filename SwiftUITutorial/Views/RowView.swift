//
//  RowView.swift
//  SwiftUITutorial
//
//  Created by César Mauricio Arellano Velásquez on 08/02/23.
//

import SwiftUI

struct RowView: View {
    var programmer: Programmer
    
    var body: some View {
        HStack {
            programmer.avatar
                .resizable()
                .frame(
                    width: 40,
                    height: 40
                )
            VStack(alignment: .leading) {
                Text(programmer.name)
                    .font(.title)
                Text(programmer.languages)
                    .font(.subheadline)
            }
            Spacer()
            if programmer.favorite {
                Image(
                    systemName: "star.fill"
                )
                .foregroundColor(.yellow)
            }
                
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(
            programmer: Programmer(
                id: 1,
                name: "César Arellano",
                languages: "Swift & Dart",
                avatar: Image(
                    systemName: "person.fill"
                )
            )
        )
    }
}
