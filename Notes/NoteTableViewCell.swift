//
//  NoteTableViewCell.swift
//  Notes
//
//  Created by Enayatullah Naseri on 4/29/19.
//  Copyright © 2019 Enayatullah Naseri. All rights reserved.
//

import UIKit
//steps
// 1. Create Protocol
// 2. Weak Var Delegate of protocol type
// 3. Call delegate metode
// 4. 


protocol NoteTableViewCellDelegate: AnyObject {
    func shareNote(for cell: NoteTableViewCell)
}

class NoteTableViewCell: UITableViewCell {

    @IBOutlet weak var noteLable: UILabel!
    
    var note: Note? {
        didSet {
            // UpdateViews
            self.updateView()
        }
    }
    
    weak var delegate: NoteTableViewCellDelegate?
    
    private func updateView() {
        guard let note = self.note else {return }
        self.noteLable.text = note.text
    }
    
    @IBAction func shareButtonTapped(_ sender: Any) {
        
        self.delegate?.shareNote(for: self)
    }
    
}
