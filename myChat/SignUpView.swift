//
//  SignUpView.swift
//  myChat
//
//  Created by Rodrigo Cerqueira Reis on 12/03/25.
//

import SwiftUI

struct SignUpView: View {
    @StateObject var viewModel = SignUpViewModel()
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            TextField("Entre com seu nome", text: $viewModel.name)
                .padding()
                .autocapitalization(.none)
                .disableAutocorrection(false)
                .border(Color(UIColor.separator))
                .padding()
            
            TextField("Entre com seu e-mail", text: $viewModel.email)
                .padding()
                .autocapitalization(.none)
                .disableAutocorrection(false)
                .border(Color(UIColor.separator))
                .padding()
                
            
            SecureField("Entre com sua senha", text: $viewModel.password)
                .padding()
                .autocapitalization(.none)
                .disableAutocorrection(false)
                .border(Color(UIColor.separator))
                .padding()
            
         
            
            Button{
                viewModel.signUp()
            } label: {
                Text("Cadastrar")
                    .frame(maxWidth: 150)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("BlueColor"))
                    .cornerRadius(10.0)
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SignUpView()
}
