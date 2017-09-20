//
//  QuestionModel.swift
//  TestMe
//
//  Created by anthony on 9/16/17.
//  Copyright © 2017 Casandra Hayward. All rights reserved.
//

import Foundation
import UIKit

struct Question {
    var question: String = " "
    var answer: String = " "
    
        
    func getQuestion() -> Question {
        
        let sampleQuestion = [
            Question(question: "What is refrigeration?", answer: "Refrigeration mainly deals with HVAC installation and maintenance.  It is a very rewarding field with the correct education, certification, and preparation."),
            Question(question:"What does it take to be a refrigeration master tech?", answer: "You need 2 years of training and journerymen cerification"),
            Question(question: "What are the most challenging parts?", answer:"Getting the hang of billing and invoicing as well as setting the best price can be taxing... but with a lot of practice you will improve and get better with experience...")
        ]
        
        let randomNumber = Int(arc4random_uniform(UInt32(sampleQuestion.count)))
        
        let question = sampleQuestion[randomNumber]
        
        return question
    }
    
    
}
