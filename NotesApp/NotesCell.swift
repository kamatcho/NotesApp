//
//  NotesCell.swift
//  NotesApp
//
//  Created by MOHAMED on 1/26/17.
//  Copyright © 2017 MOHAMED. All rights reserved.
//

import UIKit

class NotesCell: UITableViewCell {

    @IBOutlet weak var TitleTxt: UILabel!
    @IBOutlet weak var DetailsTxt: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    
    func Set(notes :MyNotes)  {
       TitleTxt.text = notes.title
        DetailsTxt.text = notes.noteDescription
       
        
    }

}
