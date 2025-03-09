//
//  SignInView.swift
//  myChat
//
//  Created by Rodrigo Cerqueira Reis on 09/03/25.
//

import SwiftUI

struct SignInView: View {
    
    @StateObject var viewModel = SignInViewModel()
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            TextField("Entre com seu e-mail", text: $viewModel.email)
                .padding()
                .border(Color(UIColor.separator))
                .padding()
            
            SecureField("Entre com sua senha", text: $viewModel.password)
                .padding()
                .border(Color(UIColor.separator))
                .padding()
            
            Button{
                viewModel.signIn()
            } label: {
                Text("Entrar")
            }
            
            Button{
                
            } label: {
                Text("Não tenho uma conta? Clique aqui")
            }
            
        }
    }
}

#Preview {
    SignInView()
}
