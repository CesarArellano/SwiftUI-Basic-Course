//
//  MainView.swift
//  SwiftUITutorial
//
//  Created by César Mauricio Arellano Velásquez on 08/02/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView {
            VStack {
                MapView()
                    .frame(height: 400)
                ImageView()
                    .offset(y: -100)
                Divider()
                    .padding()
                ContentView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView()
            MainView()
                .preferredColorScheme(.dark)
                .previewDevice("iPad Pro (12.9-inch) (6th generation)")
        }
    }
}
