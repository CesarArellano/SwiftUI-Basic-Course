//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by César Mauricio Arellano Velásquez on 02/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Bienvenidos al curso de Swift UI")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .background(Color.gray)
            Spacer()
            ZStack {
                Text("")
                    .frame(maxWidth: .infinity,
                        maxHeight:
                        .infinity)
                    .background(Color.gray).padding()
                Text("")
                    .frame(maxWidth: .infinity,
                        maxHeight:
                        .infinity)
                    .background(Color.red).padding(40)
                Text("")
                    .frame(maxWidth: .infinity,
                        maxHeight:
                        .infinity)
                    .background(Color.blue).padding(60)
                Text("")
                    .frame(maxWidth: .infinity,
                        maxHeight:
                        .infinity)
                    .background(Color.green).padding(80)
                
            }
            Spacer()
            HStack{
                Text("Hello RWD!")
                    .foregroundColor( Color.red)
                .padding()
                .background(Color.gray)
                Spacer()
                Text("Bienvenidos a RWD!")
                    .foregroundColor( Color.red)
                .padding()
                .background(Color.gray)
                
            }
            VStack() {
                Text("1")
                Text("2")
                Text("3")
                Text("4")
                Text("5")
                Text("6")
                Text("7")
                Text("8")
                Text("9")
                VStack() {
                    Text("10")
                    Text("11")
                    Text("12")
                }
            }
        }
        .background(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
