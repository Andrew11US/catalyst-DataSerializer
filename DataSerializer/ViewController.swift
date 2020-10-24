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
    @IBOutlet weak var correct1Btn: UIButton!
    @IBOutlet weak var correct2Btn: UIButton!
    @IBOutlet weak var correct3Btn: UIButton!
    @IBOutlet weak var correct4Btn: UIButton!
    @IBOutlet weak var generateBtn: UIButton!
    @IBOutlet weak var copyBtn: UIButton!
    
    let pasteboard = UIPasteboard.general

    override func viewDidLoad() {
        super.viewDidLoad()
        
        outputArea.text = "Some text"
    }
    
    @IBAction func copyToPasteboard(_ sender: UIButton) {
        pasteboard.string = outputArea.text
    }

}

