//
//  ViewController.swift
//  Weather
//
//  Created by Angus Mak on 2016-02-22.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var currentQuestionLabel: UILabel!
    @IBOutlet var currentQuestionLabelCenterXConstraint: NSLayoutConstraint!
    
    @IBOutlet var nextQuestionLabel: UILabel!
    @IBOutlet var nextQuestionLabelCenterXConstraint: NSLayoutConstraint!

    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = ["From what is cognac made?",
        "What is 7+7?",
        "What is the capital of Vermont?"]
    
    let answers: [String] = ["Grapes",
        "14",
        "Montpelier"]
    
    var currentQuestionsIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuestionLabel.text = questions[currentQuestionsIndex]
        
        updateOffScreenLabel()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        nextQuestionLabel.alpha = 0
    }

    func animateLabelTransitions() {
        view.layoutIfNeeded()
        
        let screenWidth = view.frame.width
        self.nextQuestionLabelCenterXConstraint.constant = 0
        self.currentQuestionLabelCenterXConstraint.constant += screenWidth
        
        UIView.animateWithDuration(0.5,
            delay: 0,
            options: [.CurveLinear],
            animations: {
                self.currentQuestionLabel.alpha = 0
                self.nextQuestionLabel.alpha = 1
                
                self.view.layoutIfNeeded()
            },
            completion: { _ in
                swap(&self.currentQuestionLabel, &self.nextQuestionLabel)
                swap(&self.currentQuestionLabelCenterXConstraint, &self.nextQuestionLabelCenterXConstraint)
                
                self.updateOffScreenLabel()
            }
        )
    }
    
    func updateOffScreenLabel() {
        let screenWidth = view.frame.width
        nextQuestionLabelCenterXConstraint.constant = -screenWidth
    }
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        ++currentQuestionsIndex
        if currentQuestionsIndex == questions.count{
            currentQuestionsIndex = 0
        }
        
        let question: String = questions[currentQuestionsIndex]
        nextQuestionLabel.text = question
        answerLabel.text = "???"
        
        animateLabelTransitions()
    }

    @IBAction func showAnswer(sender: AnyObject) {
        let answer: String = answers[currentQuestionsIndex]
        answerLabel.text = answer
    }

}

