//
//  EnviromentView.swift
//  SwiftUITutorial
//
//  Created by César Mauricio Arellano Velásquez on 09/02/23.
//

import SwiftUI

struct EnviromentView: View {
    @EnvironmentObject var user: UserData
    
    var body: some View {
        Text(user.name)
    }
}

struct EnviromentView_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentView().environmentObject(UserData())
    }
}
