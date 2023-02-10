//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by César Mauricio Arellano Velásquez on 08/02/23.
//

import SwiftUI

final class ProgrammersModelData: ObservableObject {
    @Published var programmers = [
        Programmer(
            id: 0,
            name: "César Arellano",
            languages: "Swift & Dart",
            avatar: Image(
                systemName: "person.fill"
            ),
            favorite: true
        ),
        Programmer(
            id: 1,
            name: "Jair Escamilla",
            languages: "JS & TS",
            avatar: Image(
                systemName: "person.fill"
            )
        ),
        Programmer(
            id: 2,
            name: "Jorge Emilio",
            languages: "JS & Dart",
            avatar: Image(
                systemName: "person.fill"
            )
        ),
        Programmer(
            id: 3,
            name: "Raúl González",
            languages: "JS & Python",
            avatar: Image(
                systemName: "person.fill"
            ),
            favorite: true
        )
    ]
}



struct ListView: View {
    
    @EnvironmentObject var programmersModelData: ProgrammersModelData
    @State private var showFavorites = false
    
    private var filteredProgrammers: [Programmer] {
        return programmersModelData.programmers.filter { programmer in
            return !showFavorites || programmer.favorite
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Toggle(isOn: $showFavorites) {
                    Text("Show favorites")
                }.padding()
                
                List( filteredProgrammers, id: \.id ) { programmer in
                    NavigationLink(
                        destination: ListDetailView(
                            programmer: programmer,
                            favorite: $programmersModelData.programmers[programmer.id].favorite
                        )
                    ) {
                        RowView(programmer: programmer)
                    }
                }
                .navigationTitle("Programmers")
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ProgrammersModelData())
    }
}
