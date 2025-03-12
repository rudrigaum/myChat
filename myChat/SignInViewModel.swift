//
//  SignInViewModel.swift
//  myChat
//
//  Created by Rodrigo Cerqueira Reis on 09/03/25.
//

import Foundation

class SignInViewModel: ObservableObject {
    
    var name = ""
    var email = ""
    var password = ""
    
    func signIn() {
        print("email: \(email) password: \(password)")
    }
}
