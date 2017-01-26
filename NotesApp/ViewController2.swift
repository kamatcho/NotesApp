//
//  ViewController2.swift
//  NotesApp
//
//  Created by MOHAMED on 1/26/17.
//  Copyright © 2017 MOHAMED. All rights reserved.
//

import UIKit
import CoreData
class ViewController2: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var NotesTableView: UITableView!
    var NotesList = [MyNotes]()
    override func viewDidLoad() {
        super.viewDidLoad()
        NotesTableView.delegate = self
        NotesTableView.dataSource = self
        // Do any additional setup after loading the view.
        LoadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NotesList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell :NotesCell = NotesTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NotesCell
        cell.Set(notes: NotesList[indexPath.row])
        return cell
        
    }
    
    @IBAction func btndismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    func LoadData() {
        let featchrequest : NSFetchRequest<MyNotes> = MyNotes.fetchRequest()
        do {
            NotesList = try context.fetch(featchrequest)
            print(NotesList)
            NotesTableView.reloadData()
        }catch{
            print("request Error")
        }
    }
}
