//
//  ListNotesTableViewController.swift
//  NotesCFT
//
//  Created by Ildar Garifullin on 23/12/2022.
//

import UIKit

class ListNotesTableViewController: UITableViewController {
    
    // MARK: - Properties
    
    var notes = [Note]() {
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listNotesTableViewCell", for: indexPath) as! ListNotesTableViewCell
        
        let note = notes[indexPath.row]
        cell.noteTitleLabel.text = note.title
        
        
        cell.noteModificationTimeLabel.text = note.modificationTime.convertToString()
        
        return cell
    }
    
    // MARK: - Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
            case "displayNote":
                print("note cell tapped")

            case "addNote":
                print("create note bar button item tapped")

            default:
                print("unexpected segue identifier")
            }
    }
    
    @IBAction func unwindWithSegue(_ segue: UIStoryboardSegue) {

    }
}
