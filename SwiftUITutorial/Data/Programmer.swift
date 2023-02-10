//
//  Programmer.swift
//  SwiftUITutorial
//
//  Created by César Mauricio Arellano Velásquez on 08/02/23.
//

import Foundation
import SwiftUI

struct Programmer {
    init(
        id: Int,
        name: String,
        languages: String,
        avatar: Image,
        favorite: Bool = false
    ) {
        self.id = id
        self.name = name
        self.languages = languages
        self.avatar = avatar
        self.favorite = favorite
    }
    
    var id: Int
    var name: String
    var languages: String
    var avatar: Image
    var favorite: Bool
}
