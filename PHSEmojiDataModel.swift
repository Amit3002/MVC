//
//  PHSEmojiDataModel.swift
//  PHSNoMassiveViewController
//
//  Created by Patel, Amit on 8/9/16.
//  Copyright © 2016 Amit Patel. All rights reserved.
//

import Foundation



/**
 * Class to represent the data model for the Emoji messages page.
 * Put your business logic here and not in the view controller
 * to avoid Massive View Controllers!  By default make the methods
 * private and only expose methods with internal/public access as needed.
 * The controller would call the public methods, which keeps the view controller
 * code managable.
 */
class PHSEmojiDataModel {
    
    var cannedMessages = [Int: String]()
    
    init() {
        self.setup()
    }
    
    private func setup() {
        self.cannedMessages[0] = NSLocalizedString("Location 📍", comment:"location")
        self.cannedMessages[1] = NSLocalizedString("Love ♥️", comment: "love")
        self.cannedMessages[2] = NSLocalizedString("Clap hands 👏", comment:"clap hands")
        self.cannedMessages[3] = NSLocalizedString("Bee 🐝", comment: "Bee")
        self.cannedMessages[4] = NSLocalizedString("Top Hat 🎩", comment: "top hat")
        self.cannedMessages[5] = NSLocalizedString("Happy 😆", comment: "happy")
        self.cannedMessages[6] = NSLocalizedString("Dog 🐶", comment:"dog");
        self.cannedMessages[7] = NSLocalizedString("Umbrella 🌂", comment: "umbrella")
        self.cannedMessages[8] = NSLocalizedString("Pizza Yum 🍕", comment:"pizzq")
        self.cannedMessages[9] = NSLocalizedString("Popcorn🍿", comment: "popcorn")
        self.cannedMessages[10] = NSLocalizedString("Smartphone📱", comment: "smartphone")
        self.cannedMessages[11] = NSLocalizedString("I'll have a beer 🍺", comment: "beer")
            
    }
}
    
