//
//  ImageView.swift
//  SwiftUITutorial
//
//  Created by César Mauricio Arellano Velásquez on 08/02/23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("rwd_logo").resizable()
                .padding(50)
                .frame(width: 300, height: 300)
                .background(Color.gray)
                .clipShape(Circle())
                .overlay(Circle().stroke(
                    Color.blue,
                    lineWidth: 5
                ))
                .shadow(color: Color.gray, radius: 10)
            Spacer().frame(height: 30)
            Image(systemName: "person.fill.badge.minus")
                .resizable()
                .padding(50)
                .frame(width: 300, height: 300)
                .background(Color.gray)
                .clipShape(Circle())
                .overlay(Circle().stroke(
                    Color.blue,
                    lineWidth: 5
                )).foregroundColor(.white)
            
        }
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
