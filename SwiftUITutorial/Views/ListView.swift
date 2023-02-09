//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by César Mauricio Arellano Velásquez on 08/02/23.
//

import SwiftUI

private let programmers = [
    Programmer(
        id: 1,
        name: "César Arellano",
        languages: "Swift & Dart",
        avatar: Image(
            systemName: "person"
        )
    ),
    Programmer(
        id: 2,
        name: "Jair Escamilla",
        languages: "JS & TS",
        avatar: Image(
            systemName: "person.fill"
        )
    ),
    Programmer(
        id: 3,
        name: "Jorge Emilio",
        languages: "JS & Dart",
        avatar: Image(
            systemName: "person.fill"
        )
    ),
    Programmer(
        id: 4,
        name: "Raúl González",
        languages: "JS & Python",
        avatar: Image(
            systemName: "person.fill"
        )
    )
]

struct ListView: View {
    var body: some View {
        NavigationView {
            List( programmers, id: \.id ) { programmer in
                NavigationLink(
                    destination: ListDetailView(programmer: programmer)
                ) {
                    RowView(programmer: programmer)
                }
            }
            .navigationTitle("Programmers")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
