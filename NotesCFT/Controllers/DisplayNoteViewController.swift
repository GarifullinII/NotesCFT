//
//  DisplayNoteViewController.swift
//  NotesCFT
//
//  Created by Ildar Garifullin on 23/12/2022.
//

import UIKit

class DisplayNoteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }

        switch identifier {
        case "save":
            print("save bar button item tapped")

        case "cancel":
            print("cancel bar button item tapped")

        default:
            print("unexpected segue identifier")
        }
    }
}
