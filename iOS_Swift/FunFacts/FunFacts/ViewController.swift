//
//  ViewController.swift
//  FunFacts
//
//  Created by Jon on 7/24/16.
//  Copyright © 2016 Mullins Webworx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBOutlet weak var funFactButton: UIButton!
    
    
    let factModel = FactModel()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factModel.getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showFunFact() {
        let randomColor = ColorModel().getRandomColor()
        
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLabel.text = factModel.getRandomFact()
    }
    
}

