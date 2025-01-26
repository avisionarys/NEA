//
//  homeViewController.swift
//  NEA
//
//  Created by CHETAN VISROLIA on 24/01/2025.
//

import UIKit

class homeViewController: UIViewController {
    
    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    
    
    
    @IBOutlet weak var mtUIView: UIView!
    @IBOutlet weak var prUIViw: UIView!
    
  
    @IBOutlet weak var ptTableView: UITableView!
    @IBOutlet weak var mtTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.bringSubviewToFront(<#T##view: UIView##UIView#>)
        
        }
    
    @IBAction func SegmentedControll(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            self.view.bringSubviewToFront(prUIViw)
        case 1:
            self.view.bringSubviewToFront(mtUIView)
            
            
        default:
            break
        }
        
        
        
        
    }
    
    
}
     


    

