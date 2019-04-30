//
//  NotesController.swift
//  Notes
//
//  Created by Enayatullah Naseri on 4/29/19.
//  Copyright © 2019 Enayatullah Naseri. All rights reserved.
//

import Foundation


class NotesController {
    init(){
        //Create test data
        
        createNote(withText: "Walk the dog!")
        createNote(withText: "Eat Lunch!")
        createNote(withText: "Swift is awesome!!")
    }
    
    //Source of all truth
    var notes: [Note] = []
    
    func createNote(withText text: String) {
        let note = Note(text:text)
        
        notes.append(note)
    }
}
