//
//  NoteDetailViewController.swift
//  Notes
//
//  Created by Enayatullah Naseri on 4/29/19.
//  Copyright © 2019 Enayatullah Naseri. All rights reserved.
//

import UIKit

class NoteDetailViewController: UIViewController {
    
    var note:Note? {
        didSet {
            self.updateView()
        }
    }

    @IBOutlet weak var noteTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateView()

        // Do any additional setup after loading the view.
    }
    
    private func updateView(){
        guard let note = self.note, isViewLoaded else {return}
        
        noteTextView.text = note.text
        
    }
    

}
