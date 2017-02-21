//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

protocol ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool
}

extension BankVault: ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        var enter: Bool = false
        
        if password.isEmpty {
            enter = false
        } else if password.count > 10 {
            enter = false
        } else {
            for pass in password {
                if pass % 2 == 0 {
                    enter = true
                }
                return enter
            }
        }
        return enter
    }
}






