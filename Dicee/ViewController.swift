//
//  ViewController.swift
//  Dicee
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit


var diceArray : Array = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
var firstRandomIndex : Int = 0
var secondRandomIndex : Int = 0


class ViewController: UIViewController {

    @IBOutlet weak var firstDiceImageView: UIImageView!
    
    @IBOutlet weak var secondDiceImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        //add subview square programmatically
//        let square = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width/2, height: self.view.frame.height/2))
//        square.backgroundColor = UIColor.cyan
//        self.view.addSubview(square)
//
//        //add subview button programmatically
//        let button = UIButton(frame: CGRect(x: self.view.frame.width/2 , y: self.view.frame.height/2, width: self.view.frame.width/2, height: self.view.frame.height/2))
//        button.setTitle("programmatical button", for: .normal)
//        button.backgroundColor = UIColor.cyan
//        self.view.addSubview(button)

        
    }

    
    
    @IBAction func rollPressed(_ sender: AnyObject) {
        
        updateDiceImages()
    }
    
    func updateDiceImages() {
        
        firstRandomIndex = Int(arc4random_uniform(6))
        secondRandomIndex = Int(arc4random_uniform(6))
        
        firstDiceImageView.image = UIImage(named: diceArray[firstRandomIndex])
        secondDiceImageView.image = UIImage(named: diceArray[secondRandomIndex])
    }
    
    
 
    


}

