//
//  ContactsManager.swift
//  Friends
//
//  Created by Daren Davis on 6/28/19.
//  Copyright © 2019 DarenDavis.com. All rights reserved.
//

import Foundation

class ContactsManager {
    var contacts: [Contact] = []
    
    func createConContact(name: String, phoneNumber: String) -> Contact {
       let newContact = Contact(name: name, phoneNumber: phoneNumber)
        self.contacts.append(newContact)
        return newContact
    }
}
