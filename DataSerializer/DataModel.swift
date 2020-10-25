//
//  DataModel.swift
//  DataSerializer
//
//  Created by Andrew on 10/25/20.
//

import Foundation

struct Section: Codable {
    var title: String
    var available: Bool
    var topics: [Topic]
    
    internal init(title: String, available: Bool = false, topics: [Topic]) {
        self.title = title
        self.available = available
        self.topics = topics
    }
}

struct Topic: Codable {
    var title: String
    var questions: [Question]
    
    internal init(title: String, questions: [Question]) {
        self.title = title
        self.questions = questions
    }
}

struct Question: Codable {
    var text: String
    var answers: [Answer]
    
    internal init(text: String, answers: [Answer]) {
        self.text = text
        self.answers = answers
    }
}

struct Answer: Codable {
    var text: String
    var isCorrect: Int = 0
    
    internal init(text: String, isCorrect: Int = 0) {
        self.text = text
        self.isCorrect = isCorrect
    }
}
