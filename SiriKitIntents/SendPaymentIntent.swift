//
//  SendPaymentIntent.swift
//  SiriKitIntents
//
//  Created by jcapasix on 26/10/17.
//  Copyright © 2017 Jordan Capa. All rights reserved.
//

import Foundation
import Intents


extension IntentHandler: INSendPaymentIntentHandling {

    func handle(sendPayment intent: INSendPaymentIntent, completion: @escaping (INSendPaymentIntentResponse) -> Void) {
        print("function:\(#function)")
        // Check that we have valid values for payee and currencyAmount
        guard let payee = intent.payee, let amount = intent.currencyAmount else {
            return completion(INSendPaymentIntentResponse(code: .failure, userActivity: nil))
        }
        // Make your payment!
        print("Sending \(amount) payment to \(payee)!")
        completion(INSendPaymentIntentResponse(code: .success, userActivity: nil))
    }
}
