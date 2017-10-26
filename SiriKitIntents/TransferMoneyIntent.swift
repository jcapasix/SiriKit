//
//  TransferMoneyIntent.swift
//  SiriKitIntents
//
//  Created by jcapasix on 26/10/17.
//  Copyright © 2017 Jordan Capa. All rights reserved.
//

import Foundation
import Intents

extension IntentHandler: INTransferMoneyIntentHandling{

    func handle(intent: INTransferMoneyIntent, completion: @escaping (INTransferMoneyIntentResponse) -> Void) {

        // Check that we have valid values for payee and currencyAmount
        guard let fromAccount = intent.fromAccount, let toAccount = intent.toAccount,let transactionAmount = intent.transactionAmount else {
            return completion(INTransferMoneyIntentResponse(code: .unspecified, userActivity: nil))
        }
        print("Sending \(String(describing: transactionAmount.amount)) payment from \(fromAccount) to \(toAccount)!")
        completion(INTransferMoneyIntentResponse(code: .success, userActivity: nil))
    }
    func resolveTransactionScheduledDate(for intent: INTransferMoneyIntent, with completion: @escaping (INDateComponentsRangeResolutionResult) -> Void) {

    }

}

