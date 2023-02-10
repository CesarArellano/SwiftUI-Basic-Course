//
//  BindingView.swift
//  SwiftUITutorial
//
//  Created by César Mauricio Arellano Velásquez on 09/02/23.
//

import SwiftUI

struct BindingView: View {
    @Binding var counter: Int
    @State private var selection: Int?
    @ObservedObject var user: UserData
    
    var body: some View {
        VStack {
            Button("Add 2") {
                counter += 2
            }
            Button("Update user data") {
                user.name = "RayWayDay"
                user.age = 22
            }
            NavigationLink(destination: EnviromentView(), tag: 1, selection: $selection ) {
                Button("Ir a Enviroment View") {
                    selection = 1
                }
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(
            counter: .constant(0),
            user: UserData()
        )
    }
}
