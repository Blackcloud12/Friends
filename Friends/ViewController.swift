//
//  ViewController.swift
//  Friends
//
//  Created by Daren Davis on 6/28/19.
//  Copyright © 2019 DarenDavis.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let contactsManager = ContactsManager()
    
    @IBOutlet weak var displayTextView: UITextView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayTextView.layer.cornerRadius = CGFloat(9.9)
    }

    @IBAction func createButtonClicked() {
        processInput()
    }
    
    func processInput() {
        let name = nameTextField.text!
        let phoneNumber = phoneNumberTextField.text!
        contactsManager.createConContact(name: name, phoneNumber: phoneNumber)
        var message = ""
        for entry in contactsManager.contacts {
            message += "\(entry.name)\n"
        }
        displayTextView.text = message
        nameTextField.text = ""
        phoneNumberTextField.text = ""
    }

}

