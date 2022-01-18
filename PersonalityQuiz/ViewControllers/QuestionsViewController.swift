//
//  QuestionsViewController.swift
//  PersonalityQuiz
//
//  Created by User on 18.01.2022.
//

import UIKit

class QuestionsViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionsProgressView: UIProgressView!
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet var singleButtons: [UIButton]!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet var multipleLabels: [UILabel]!
    @IBOutlet var multipleSwitchs: [UISwitch]!
    
    
    @IBOutlet weak var rangeStackView: UIStackView!
    @IBOutlet var rangeLabels: [UILabel]!
    @IBOutlet weak var rangeSlider: UISlider!
    
    
    private let questions = Question.getQuestions()
    
    override func viewDidLoad() {
        super.viewDidLoad()

     }
    

}
