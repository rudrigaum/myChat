//
//  SignUpViewModel.swift
//  myChat
//
//  Created by Rodrigo Cerqueira Reis on 12/03/25.
//

import Foundation

class SignUpViewModel: ObservableObject {
    
    var name = ""
    var email = ""
    var password = ""
    
    func signUp() {
        print("name: \(name) email: \(email) password: \(password)")
    }
}
