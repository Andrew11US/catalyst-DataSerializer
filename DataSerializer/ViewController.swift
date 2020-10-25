//
//  ViewController.swift
//  DataSerializer
//
//  Created by Andrew on 10/25/20.
//

import UIKit
import Cocoa

class ViewController: UIViewController {
    @IBOutlet weak var sectionTF: UITextField!
    @IBOutlet weak var topicTF: UITextField!
    @IBOutlet weak var questionTF: UITextField!
    @IBOutlet weak var answer1TF: UITextField!
    @IBOutlet weak var answer2TF: UITextField!
    @IBOutlet weak var answer3TF: UITextField!
    @IBOutlet weak var answer4TF: UITextField!
    @IBOutlet weak var outputArea: UITextView!
    @IBOutlet weak var correct1Btn: Checkbox!
    @IBOutlet weak var correct2Btn: Checkbox!
    @IBOutlet weak var correct3Btn: Checkbox!
    @IBOutlet weak var correct4Btn: Checkbox!
    @IBOutlet weak var generateBtn: Checkbox!
    @IBOutlet weak var copyBtn: UIButton!
    @IBOutlet weak var addQuestionBtn: UIButton!
    @IBOutlet weak var addTopicBtn: UIButton!
    
    let pasteboard = UIPasteboard.general
    
    var section: Section!
    var topics: [Topic] = []
    var questions: [Question] = []
    var answers: [Answer] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func copyToPasteboard(_ sender: UIButton) {
        pasteboard.string = outputArea.text
    }
    
    @IBAction func addQuestion(_ sender: UIButton) {
        let correct1 = correct1Btn.isChecked ? 1 : 0
        let correct2 = correct2Btn.isChecked ? 1 : 0
        let correct3 = correct3Btn.isChecked ? 1 : 0
        let correct4 = correct4Btn.isChecked ? 1 : 0
        answers = [
            Answer(text: answer1TF.text!, isCorrect: correct1),
            Answer(text: answer2TF.text!, isCorrect: correct2),
            Answer(text: answer3TF.text!, isCorrect: correct3),
            Answer(text: answer4TF.text!, isCorrect: correct4),
        ]
        questions.append(Question(text: questionTF.text!, answers: answers))
        
        topics[topics.count - 1] = Topic(title: topicTF.text!, questions: questions)
        section = Section(title: sectionTF.text!, topics: topics)
    }
    
    @IBAction func addTopic(_ sender: UIButton) {
        let correct1 = correct1Btn.isChecked ? 1 : 0
        let correct2 = correct2Btn.isChecked ? 1 : 0
        let correct3 = correct3Btn.isChecked ? 1 : 0
        let correct4 = correct4Btn.isChecked ? 1 : 0
        answers = [
            Answer(text: answer1TF.text!, isCorrect: correct1),
            Answer(text: answer2TF.text!, isCorrect: correct2),
            Answer(text: answer3TF.text!, isCorrect: correct3),
            Answer(text: answer4TF.text!, isCorrect: correct4),
        ]
        questions = []
        questions.append(Question(text: questionTF.text!, answers: answers))
        
        topics.append(Topic(title: topicTF.text!, questions: questions))
        section = Section(title: sectionTF.text!, topics: topics)
    }
    
    @IBAction func generate(_ sender: UIButton) {
        do {
            let data = try JSONEncoder().encode(section.self)
            let output = String(data: data, encoding: .utf8)
            outputArea.text = output
        } catch let error {
            print(error.localizedDescription)
        }
    }

}

