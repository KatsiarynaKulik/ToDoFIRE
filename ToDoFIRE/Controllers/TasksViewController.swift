//
//  TasksViewController.swift
//  ToDoFIRE
//
//  Created by Katsiaryna Kulik  on 3.07.23.
//  Copyright © 2023 Katsiaryna Kulik. All rights reserved.
//

import UIKit
import Firebase

class TasksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  @IBOutlet var tableView: UITableView!
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

      cell.backgroundColor = .clear
      cell.textLabel?.text = "This is cell number \(indexPath.row)"
      cell.textLabel?.textColor = .white
      return cell
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 5
  }

  @IBAction func addTapped(_ sender: UIBarButtonItem) {
  }
  
  @IBAction func signOutTapped(_ sender: UIBarButtonItem) {
    do {
        try Auth.auth().signOut()
    } catch {
        print(error.localizedDescription)
    }
    dismiss(animated: true, completion: nil)
}
}

