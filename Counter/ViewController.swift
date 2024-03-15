//
//  ViewController.swift
//  Counter
//
//  Created by Evgenia Kucherenko on 15.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelCounter: UILabel!
    @IBOutlet weak var buttonIncrease: UIButton!
    @IBOutlet weak var buttonDecrease: UIButton!
    @IBOutlet weak var buttonReset: UIButton!
    @IBOutlet weak var historyText: UITextView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
        buttonDecrease.backgroundColor = .buttonDecrease
        buttonDecrease.frame.size.width = 100
        buttonDecrease.frame.size.height = 100
        buttonDecrease.layer.cornerRadius = 50
        buttonDecrease.layer.masksToBounds = false
        
        
        buttonIncrease.backgroundColor = .buttonIncrease
        buttonIncrease.frame.size.width = 100
        buttonIncrease.frame.size.height = 100
        buttonIncrease.layer.cornerRadius = 50
        buttonIncrease.layer.masksToBounds = false
        
        buttonReset.backgroundColor = .systemGray6
        buttonReset.layer.cornerRadius = 20
        }
    
    //This function formats the date
        func returnFormatedDate(date: Date) -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd.MM.yyyy, HH:mm:ss"
            return dateFormatter.string(from: date)
        }
    
    var count = 0
    
    // Here I work with the button to increase the value
    @IBAction func changeButtonIncrease(_ sender: Any) {
        count += 1
        labelCounter.text = "\(count)"
        historyText.text += "\(returnFormatedDate(date: Date())): значение изменено на +1\n"
    }
    
    // Here I work with the decrease value button
    @IBAction func changeButtonDecrease(_ sender: Any) {
        if count == 0 {
        historyText.text += "\(returnFormatedDate(date: Date())): попытка уменьшить значение счётчика ниже 0\n"
        } else {
        count -= 1
        labelCounter.text = "\(count)"
        historyText.text += "\(returnFormatedDate(date: Date())): значение изменено на -1\n"
        }
    }
    
    // Here I work with the reset button
    @IBAction func changeButtonReset(_ sender: Any) {
        count = 0
        labelCounter.text = "0"
        historyText.text += "\(returnFormatedDate(date: Date())): значение сброшено\n"
    }
    
}
