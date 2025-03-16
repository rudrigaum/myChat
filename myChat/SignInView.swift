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
        NavigationView {
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
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
                    viewModel.signIn()
                } label: {
                    Text("Entrar")
                        .frame(maxWidth: 150)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("BlueColor"))
                        .cornerRadius(10.0)
                }
                
                NavigationLink(destination: SignUpView(),
                               label: {
                    Text("Não tenho uma conta? Clique aqui")
                        .foregroundColor(.black)
                    
                })
            }
            .navigationTitle("Login")
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    SignInView()
}
