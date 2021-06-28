//
//  HomeViewController.swift
//  Quiz
//
//  Created by  Decagon on 26/06/2021.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var questionLabel:
        UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    let questions:[String] = [
        "What is 7 + 7?",
        "What is the capital of vermont?",
        "What is cognac made from?",
       "What is the name of the Stack that makes use of class 5",
         "How many Decadevs are in the iOS Stack?",
         "How many male Decadevs are there in the iOS Stack?",
        "How many female Decadevs are there in the iOS Stack?"
    ]
    
    let answer:[String] = [
        "14",
        "Montpelier",
        "Grapes",
        "iOS Stack",
        "9",
        "7",
        "2"
    ]
    
    var currentQuestionIndex = 0
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showNewQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }

        questionLabel.text = questions[currentQuestionIndex]
        answerLabel.text = "???"
    }
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = answer[currentQuestionIndex]
    }
    

}

