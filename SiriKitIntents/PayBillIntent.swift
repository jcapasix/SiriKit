//
//  PayBillIntent.swift
//  SiriKitIntents
//
//  Created by jcapasix on 26/10/17.
//  Copyright © 2017 Jordan Capa. All rights reserved.
//

import Foundation
import Intents

extension IntentHandler: INPayBillIntentHandling{

    func handle(intent: INPayBillIntent, completion: @escaping (INPayBillIntentResponse) -> Void) {
        print("function:\(#function)")
        let response = INPayBillIntentResponse(code: .success, userActivity: nil)
        completion(response)
    }

    func confirm(intent: INPayBillIntent, completion: @escaping (INPayBillIntentResponse) -> Swift.Void) {
        print("function:\(#function)")

        let response = INPayBillIntentResponse(code: .ready, userActivity: nil)
        response.transactionAmount = intent.transactionAmount
        response.fromAccount = intent.fromAccount
        response.transactionScheduledDate = intent.transactionScheduledDate
        response.transactionNote = intent.transactionNote

        completion(response)
    }

}
