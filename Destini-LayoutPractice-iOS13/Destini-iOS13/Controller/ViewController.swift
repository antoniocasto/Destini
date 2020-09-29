//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyText: UILabel!
    @IBOutlet weak var choiceOneButton: UIButton!
    @IBOutlet weak var choiceTwoButton: UIButton!

    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }

    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        storyBrain.updateStory(choice: sender.currentTitle!)
        
        updateUI()
    }
    
    func updateUI() {
        storyText.text = storyBrain.getStory().storyText
        choiceOneButton.setTitle(storyBrain.getStory().choiceOne, for: .normal)
        choiceTwoButton.setTitle(storyBrain.getStory().choiceTwo, for: .normal)
    }
    
}

