//
//  ResultViewController.swift
//  PersonalityQuiz
//
//  Created by User on 18.01.2022.
//

import UIKit

class ResultViewController: UIViewController {

  

    @IBOutlet weak var userIconLabel: UILabel!
    
    @IBOutlet weak var discriptionLabel: UILabel!
    
    var answersUser:[Answer] = []
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setHidesBackButton(true, animated: false)
        setDiscriptionForAnswer(for: getFrequentAnswer(from: answersUser))
    }
}

extension ResultViewController {
    private func getFrequentAnswer(from answers: [Answer]) -> [[Answer]] {
        
        var animals:[[Answer]] = []
        
        var cat:[Answer] = []
        var dog:[Answer] = []
        var rabbit:[Answer] = []
        var turtle:[Answer] = []
        
        var maxCount: Int {
            animals.map{$0.count}.max()!
        }
        var filterAnswer:[[Answer]]{
            animals.filter{$0.count == maxCount}
        }
        
        answers.forEach {
            if $0.animal == .cat {
                cat.append($0)
                
            } else if $0.animal == .dog {
                dog.append($0)
                
            } else if $0.animal == .rabbit {
                rabbit.append($0)
                
            } else {
                turtle.append($0)
                
            }
            
            animals = [cat] + [dog] + [rabbit] + [turtle]
        }
        
        return filterAnswer
    }
    
    private func setDiscriptionForAnswer(for resultAnswers: [[Answer]]) {
        
        for i in resultAnswers {
            var icon: String {
                    "Вы - \(i[0].animal.rawValue)"
                }
            var definition: String {
                    i[0].animal.definition
                }
            if i[0].animal == .dog {
                userIconLabel.text = icon
                discriptionLabel.text = definition
            } else if i[0].animal == .cat {
                userIconLabel.text = icon
                discriptionLabel.text = definition
            } else if i[0].animal == .rabbit {
                userIconLabel.text = icon
                discriptionLabel.text = definition
            } else {
                userIconLabel.text = icon
                discriptionLabel.text = definition
            }
        }
    }
}
