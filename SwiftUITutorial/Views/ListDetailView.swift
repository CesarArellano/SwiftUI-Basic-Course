//
//  ListDetailView.swift
//  SwiftUITutorial
//
//  Created by César Mauricio Arellano Velásquez on 08/02/23.
//

import SwiftUI

struct ListDetailView: View {
    var programmer: Programmer
    @Binding var favorite: Bool
    
    var body: some View {
        VStack {
            programmer.avatar.resizable()
                .padding(60)
                .frame(width: 300, height: 300)
                .clipShape(Circle())
                .overlay(Circle().stroke(
                    Color.blue,
                    lineWidth: 5
                ))
                .foregroundColor(.blue)
            HStack {
                Text(programmer.name)
                    .font(.largeTitle)
                Button {
                    favorite.toggle()
                } label: {
                    if favorite {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star")
                            .foregroundColor(.yellow)
                    }
                    
                }
            }
            Text(programmer.languages).font(.title)
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(
            programmer: Programmer(
                id: 1,
                name: "César Arellano",
                languages: "Swift & Dart",
                avatar: Image(
                    systemName: "person.fill"
                ),
                favorite: true
            ),
            favorite: .constant(false)
        )
    }
}
