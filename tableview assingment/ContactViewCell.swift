//
//  ContactViewCell.swift
//  tableview assingment
//
//  Created by Nidhi Gupta on 06/03/16.
//  Copyright © 2016 Nidhi Gupta. All rights reserved.
//

import UIKit

class ContactViewCell: UITableViewCell {


    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var noLabel: UILabel!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var photoImageView: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func populateCell(contact:Contact)
    {
        self.nameLabel.text = contact.name;
        self.noLabel.text = contact.number;
        self.photoImageView.layer.masksToBounds = true
        self.photoImageView.image = UIImage(named: contact.image)
    }
    
    @IBAction func callButtonAction(sender: AnyObject)
    {
       
    }

    @IBAction func messageButtonAction(sender: AnyObject)
    {
    }
}
