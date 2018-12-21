//
//  RestaurantContact.swift
//  LetsEat
//
//  Created by Craig Clayton on 12/2/18.
//  Copyright © 2018 Cocoa Academy. All rights reserved.
//

import Intents

struct RestaurantContact {
    let name: String
    let email: String
    
    static func allContacts() -> [RestaurantContact] {
        return [
            RestaurantContact(name: "Jason Clayton", email: "jason@mac.com"),
            RestaurantContact(name: "Joshua Clayton", email: "joshua@texas.edu"),
            RestaurantContact(name: "Teena Harris", email: "teena@gmail.com")
        ]
    }
    
    func inPerson() -> INPerson {
        let formatter = PersonNameComponentsFormatter()
        let handle = INPersonHandle(value: email, type: .emailAddress)
        
        if let components = formatter.personNameComponents(from: name) {
            return INPerson(personHandle: handle, nameComponents: components, displayName: components.familyName, image: nil, contactIdentifier: nil, customIdentifier: nil)
        }
        else {
            return INPerson(personHandle: handle, nameComponents: nil, displayName: nil, image: nil, contactIdentifier: nil, customIdentifier: nil)
        }
    }
}






