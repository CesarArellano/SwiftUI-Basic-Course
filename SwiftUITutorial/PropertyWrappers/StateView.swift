//
//  StateView.swift
//  SwiftUITutorial
//
//  Created by César Mauricio Arellano Velásquez on 09/02/23.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var name: String = "RayWayDay"
    @Published var age = 22
}

struct StateView: View {
    
    @State private var counter: Int = 0
    @State private var selection: Int?
    @StateObject private var user = UserData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("El valor actual es \( counter )")
                Button("Suma 1") {
                    counter += 1
                }
                Text("My name is \( user.name) and my age is \( user.age) ")
                Button("Update user data") {
                    user.name = "César Arellano"
                    user.age = 23
                }
                NavigationLink(destination: BindingView(counter: $counter, user: user), tag: 1, selection: $selection ) {
                    Button("Ir a Binding View") {
                        selection = 1
                    }
                }
            }
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView().environmentObject(UserData())
    }
}
