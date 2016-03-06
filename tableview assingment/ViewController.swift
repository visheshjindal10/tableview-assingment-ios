//
//  ViewController.swift
//  tableview assingment
//
//  Created by Nidhi Gupta on 06/03/16.
//  Copyright © 2016 Nidhi Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    
    @IBOutlet
    var contactTableView: UITableView!
    var contactsList: [Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 1...5{
            contactsList.append(Contact.init(name: "Leela", number: "983433433", image: "test"))
        }

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactsList.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cellIdentifier = "contactCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as!ContactViewCell
        let contact = contactsList[indexPath.row]
        cell.populateCell(contact)
        return cell;
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
}





