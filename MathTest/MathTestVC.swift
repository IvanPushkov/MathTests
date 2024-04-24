//
//  ViewController.swift
//  MathTest
//
//  Created by Ivan Pushkov on 30.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var exempleLabel: UILabel!
    @IBOutlet var textField: UITextField!
    @IBOutlet weak var checkButton: UIButton!
    var mathAction: String = ""
    
    
    override func viewDidLoad() {
        
        textField.isHidden = true
        super.viewDidLoad()
        checkButton.layer.cornerRadius = 15
        exempleLabel.text = "Начнем?"
        textField.text = ""
        textField.frame = CGRect(x: 12, y: 33, width: view.frame.width - 30, height: 50)
        textField.center = view.center
        
    }
    func textFieldShouldReturn( textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    
    func getMathAction()-> [String:String] {
        var examples = Example.getRandomExample()
        switch mathAction {
        case "Summ": examples = Example.getSummExample()
        case "Random": examples = Example.getRandomExample()
        case "Subtraction": examples = Example.getSubtractionExample()
        case "Multiplication": examples = Example.getMultiplicationExample()
        case "Division": examples = Example.getDivisionExample()
        default: break
        }
        return examples
    }
    lazy  var example = getMathAction().randomElement()
    
    
    //   MARK: Create random calculator
    
    
    @IBAction func done(_ sender: UITextField) {
        sender.resignFirstResponder()
        exempleAction()
    }
    
    
    func exempleAction (){
        print(" на данный момент пара ключ значение \(example!.key ) and \(example!.value)")
        
      
        
        if textField.text != example?.value {
            let firstAlert = UIAlertController(title: "Вниманте!", message: "no, true: \(example!.value), but you wrote \(textField.text!), and please round your answer to nearest intager: \(example!.key) ", preferredStyle: .alert)
            let okBtn = UIAlertAction(title: "Ok", style: .default)
            firstAlert.addAction(okBtn)
            present(firstAlert, animated: true)
        }
        
        else {
            example =  getMathAction().randomElement()
            exempleLabel.text = example?.key
            print ("yes")
            textField.text = ""
            
        }
    }
    
    @IBAction func checkButtonAction() {
        textField.isHidden = false
        if exempleLabel.text == "Начнем?" {
            exempleLabel.text = example?.key
            checkButton.isHidden = true
        }
        
    }
    
}


    

    


   
   

               
