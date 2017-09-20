//
//  ViewController.swift
//  TestMe
//
//  Created by anthony on 9/16/17.
//  Copyright © 2017 Casandra Hayward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//Properties
    let colorModel = ColorModel()
    let question = Question()
    var score = 0
    
    
    @IBOutlet weak var nextButtonTitle: UIButton!
  
    
   
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerTextView: UITextView!
    

    
    @IBOutlet weak var scoreButtonTitle:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
  
    
    @IBAction func displayScore(_ sender: UIButton) {
        
        if scoreButtonTitle.currentTitle == "Score" {
            scoreButtonTitle.setTitle(String(score), for: .normal)
        }else{
            
            scoreButtonTitle.setTitle("Score", for: .normal)
        }
         
        
    }
    
    
    @IBAction func goToNextQuestion( _ sender: UIButton) {
        
     
 let question = self.question.getQuestion()
        questionLabel.text = question.question
        answerTextView.text = question.answer
        updateUIColor()
        
    
    }
    
    
    
    func updateUIColor() {
         let randomColor = Int(arc4random_uniform(UInt32(colorModel.colorChoices.count)))
        let colorChosen = colorModel.colorChoices[randomColor]
        
        view.backgroundColor = colorChosen
        
         
        
        nextButtonTitle.setTitleColor(colorChosen, for: .normal)
        scoreButtonTitle.setTitleColor(colorChosen, for: .normal)
        
        answerTextView.backgroundColor = colorChosen
        questionLabel.backgroundColor = colorChosen
        
        
    }

}

