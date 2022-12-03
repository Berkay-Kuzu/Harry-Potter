//
//  Question.swift
//  Harry Potter
//
//  Created by Berkay Kuzu on 25.11.2022.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
