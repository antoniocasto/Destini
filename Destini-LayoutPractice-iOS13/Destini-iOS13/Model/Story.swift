//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let storyText: String
    let choiceOne: String
    let choiceTwo: String
    let choice1Dest: Int
    let choice2Dest: Int
    
    init(title: String, choice1: String, choice2: String, choice1Destination: Int, choice2Destination: Int) {
        storyText = title
        choiceOne = choice1
        choiceTwo = choice2
        choice1Dest = choice1Destination
        choice2Dest = choice2Destination
    }
}
