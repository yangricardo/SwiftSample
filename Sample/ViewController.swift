//
//  ViewController.swift
//  Sample
//
//  Created by Yang Ricardo  on 30/11/2017.
//  Copyright © 2017 Yang Ricardo . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate ,UITextViewDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func background(_ sender: Any) {
        if self.view.backgroundColor === UIColor.white {
            self.view.backgroundColor = UIColor.purple
            label.textColor = UIColor.white
        } else{
            self.view.backgroundColor = UIColor.white
            label.textColor = UIColor.black
        }
    }
    @IBAction func tapped(_ sender: Any) {
        if label.text == "😀"{
            label.text = "🤯"
        } else{
            label.text = "😀"
        }

    }
    
    func textViewDidChange(_ textView: UITextView) {
        if textView.text.count > 20 {
            alert(message: "Campo com o máximo de 20 caracteres")
        }
    }
    
   
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if (textField.text!.count > 4){
            alert(message: "Campo com o máximo de 4 caracteres")
        }
    }

    
    @IBAction func verifyText(_ sender: Any) {
        
        
        if textView.text.count > 20 {
            alert(message: "Campo com o máximo de 20 caracteres")
        }
        
    }
    
    func alert(message: String, title: String = "") {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func addHello(to: String) -> String{
        
        let hello = "Hello"
        
        return to + hello
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textView.delegate = self
        //Without setting the delegate you won't be able to track UITextView events
        //Sem adicionar o delegate, não conseguimos rastrear os eventos de UITextView
        
        textField.delegate = self
        
        _ = addHello(to: "World")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

