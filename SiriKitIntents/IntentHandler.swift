//
//  IntentHandler.swift
//  SiriKitIntents
//
//  Created by jcapasix on 26/10/17.
//  Copyright © 2017 Jordan Capa. All rights reserved.
//

import Intents

class IntentHandler: INExtension {

    override func handler(for intent: INIntent) -> Any? {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
        return self
    }
}


