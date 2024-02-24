//
//  Question.swift
//  questionnaire
//
//  Created by Глеб on 23.02.2024.
//

enum ResponseType {
    case single
    case multiple
    case range
}


struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
}


extension Question {
    static func getQuestion() -> [Question] {
        return [
            Question(text: "Какую пищу вы предпочитаете?", type: .single, answers: [Answer(text: "Стейк", type: .dog),
                                                                                    Answer(text: "Рыба", type: .cat),
                                                                                    Answer(text: "Морковка", type: .rabbit),
                                                                                    Answer(text: "Кукуруза", type: .turtle)]),
            Question(text: "Какую пищу вы предпочитаете?", type: .multiple, answers: [Answer(text: "Плавать", type: .dog),
                                                                                    Answer(text: "Спать", type: .cat),
                                                                                    Answer(text: "Обниматься", type: .rabbit),
                                                                                    Answer(text: "Есть", type: .turtle)]),
            Question(text: "Какую пищу вы предпочитаете?", type: .range, answers: [Answer(text: "Обожаю", type: .dog),
                                                                                    Answer(text: "Обожаю", type: .cat),
                                                                                    Answer(text: "Ненавижу", type: .rabbit),
                                                                                    Answer(text: "Ненавижу", type: .turtle)]),
            ]
    }
}
