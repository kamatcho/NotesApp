//
//  ViewController.swift
//  NotesApp
//
//  Created by MOHAMED on 1/26/17.
//  Copyright © 2017 MOHAMED. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var TitleLabel: UITextField!
    @IBOutlet weak var DetailsTxt: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

  
    @IBAction func SaveNote(_ sender: Any) {
        
        let mynotes = MyNotes(context: context)
        mynotes.title = TitleLabel.text
        mynotes.noteDescription = DetailsTxt.text
        mynotes.date_saved = Date() as NSDate?
        do{
            ad.saveContext()
            print("Saved")
            print(mynotes.title)
        } catch {
            print("Error")
        }
        
        
    }

}

