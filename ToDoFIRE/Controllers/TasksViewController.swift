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
    let alertController = UIAlertController(title: "New Tack", message: "Add new task", preferredStyle: .alert)
    alertController.addTextField()
    let save = UIAlertAction(title: "Save", style: .default) { _ in
      guard let textField = alertController.textFields?.first, textField.text != "" else { return }
      //let task
      //task ref
    }
    let cansel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
    alertController.addAction(save)
    alertController.addAction(cansel)

    present(alertController, animated: true, completion: nil)
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

