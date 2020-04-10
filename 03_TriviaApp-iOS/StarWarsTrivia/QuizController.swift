//
//  QuizController.swift
//  StarWarsTrivia
//
//  Created by Safiyah Lakhany on 7/10/19.
//  Copyright © 2019 Safiyah Lakhany. All rights reserved.
//

import UIKit


class QuizController: UIViewController
{
    struct Question {
        var title: String
        var answers: [String]
        var correctAnswer: Int
        
    }
    
    @IBOutlet weak var questionLabel: UITextView!
    
    @IBOutlet weak var answer0: UIButton!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var progressLabel: UILabel!
    
    let questions: [Question] = [
        Question(title: "What color is Darth Vader's light saber?", answers: ["Green", "Red", "Blue", "Purple"], correctAnswer: 1),
        Question(title: "Who is Luke Skywalker's sister?", answers: ["Lei Organa", "Maz Kenata", "Rey", "BB-8"], correctAnswer: 0),
        Question(title: "Which of the following is not a prequel?", answers: ["Attack of the Clones", "Revenge of the Sith", "The Phantom Menace", "Return of the Jedi"], correctAnswer: 3) ]
    
    var currentQuestion: Question?
    var currentIndex: Int = 0
    var correctAnswers: Int = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        currentQuestion = questions[0]
        setQuestion()
    }
    

    
    func setQuestion()
    {
        if currentIndex < questions.count
        {
            currentQuestion = questions[currentIndex]
            questionLabel.text = currentQuestion?.title
            answer0.setTitle(currentQuestion?.answers[0], for: .normal)
            answer1.setTitle(currentQuestion?.answers[1], for: .normal)
            answer2.setTitle(currentQuestion?.answers[2], for: .normal)
            answer3.setTitle(currentQuestion?.answers[3], for: .normal)
            progressLabel.text = "Question: \(currentIndex + 1)/\(questions.count)"


        }
        else
        {
            performSegue(withIdentifier: "showResults", sender: self)
        }
    }
    
    func nextQuestion()
    {
        currentIndex += 1
        setQuestion()
    }
    
   
    
    func checkAnswer(index: Int)
    {
        if currentQuestion?.correctAnswer == index
        {
            correctAnswers += 1
        }
        
        nextQuestion()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "showResults"
        {
            let controller = segue.destination as! ResultsController
            controller.numberCorrect = correctAnswers
            controller.total = questions.count
        }
    }

    @IBAction func answer0Pressed(_ sender: Any)
    {
        checkAnswer(index: 0)
    }
    
    @IBAction func answer1Pressed(_ sender: Any)
    {
        checkAnswer(index: 1)
    }
    
    @IBAction func answer2Pressed(_ sender: Any)
    {
        checkAnswer(index: 2)
    }
    
    
    @IBAction func answer3Pressed(_ sender: Any)
    {
        checkAnswer(index: 3)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
