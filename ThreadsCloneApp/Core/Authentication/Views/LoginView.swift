//
//  LoginView.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 22/09/23.
//

import SwiftUI

struct LoginView: View {

    @StateObject var viewModel = LoginViewModel()
    var body: some View {
        
        NavigationStack{
            VStack{
                Spacer()
                Image("threads-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                VStack
                {
                    TextField("Enter your email", text: $viewModel.email)
                        .autocapitalization(.none)
                        .modifier(ThreadsTextFieldModifier())
                    
                    
                    SecureField("Enter your password", text: $viewModel.password)
                        .modifier(ThreadsTextFieldModifier())
                }
                
                NavigationLink{
                    Text("Forgot Password")
                } label: {
                    Text("Forgot Password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing,28)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                //login button
                Button{
                    Task{try await viewModel.loginUser()}
                }label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352,height: 44)
                        .background(.black)
                        .cornerRadius(8)

                }
                
                Spacer()
                
                Divider()
                NavigationLink{
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)

                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        
                        Text("Sign up")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
