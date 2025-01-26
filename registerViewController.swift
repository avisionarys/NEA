//
//  registerViewController.swift
//  NEA
//
//  Created by CHETAN VISROLIA on 24/01/2025.
//

import UIKit
import FirebaseFirestore
import FirebaseAuth
import Firebase
import FirebaseDatabase

class registerviewcontroller: UIViewController {
    
    private let db = Firestore.firestore()
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
 
    @IBOutlet weak var weightTextField: UITextField!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
        func checkEmailValidity(email: String) -> Bool {
            let emailPattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Z|a-z]{2,}"
            let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailPattern)
            return emailPredicate.evaluate(with: email)
        }
        
        if let email = emailTextField.text, let name = nameTextField, let surname = surnameTextField, let age = ageTextField, let weight = weightTextField, let height = heightTextField, let password = passwordTextField {
            let userID = UUID().uuidString
            if checkEmailValidity(email: email) {
                db.collection("userDatabase").addDocument(data: [
                    "email": email,
                    "userID": userID,
                    "name": name,
                    "surname": surname,
                    "age": age,
                    "weight": weight,
                    "height": height,
                    "password": password
                    
                ]) { error in
                    if let error = error {
                        print("Error saving email to Firestore: \(error.localizedDescription)")
                    } else {
                        print("Email successfully saved to Firestore.")
                    }
                }
            } else {
                print("Invalid email address.")
            }
        }
    }
    
    
    
    
    
    }
    

  
