//
//  ViewController.swift
//  MyAnimationApp
//
//  Created by Yaroslav on 19.09.2020.
//  Copyright © 2020 Yaroslav. All rights reserved.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var springAnimationViewText: UILabel!
    
    let animations = Animation.getAnimation()
    
    private var counter = 0

    @IBAction func nextAnimationCalled(_ sender: UIButton) {
        if counter < animations.count {
            springAnimationView.animation = animations[counter].type
            springAnimationView.force = CGFloat(animations[counter].force)
            springAnimationView.duration = CGFloat(animations[counter].duration)
            springAnimationView.animate()
            
            if counter < animations.count - 1 {
                sender.setTitle(animations[counter + 1].type,
                                for: .normal)
            } else {
                sender.setTitle("End Round", for: .normal)
            }
            
            springAnimationViewText.text = animations[counter].type
            
            counter += 1
            
        } else {
            springAnimationViewText.text = "Animation Type"
            sender.setTitle("Start Animation", for: .normal)
            counter = 0
        }
    }
}
