//
//  ViewController.swift
//  NEA_computer_science
//
//  Created by CHETAN VISROLIA on 19/11/2024.
//

import UIKit




class HomeViewController: UIViewController {
    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    @IBAction func ToggleTemplates(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            let firstVC = storyboard?.instantiateViewController(withIdentifier: "homeViewController")
            present(firstVC!, animated: true, completion: nil)
        case 1:
            let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondHomeViewController")
            present(secondVC!, animated: true, completion: nil)
        default:
            break
        }
        
        
    }
    
    
    
}
    
    
    
    
    
    
    
   
    
    
    




