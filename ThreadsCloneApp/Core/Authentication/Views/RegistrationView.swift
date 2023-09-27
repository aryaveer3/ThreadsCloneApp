//
//  RegistrationView.swift
//  ThreadsCloneApp
//
//  Created by Unthinkable-mac-0077 on 22/09/23.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    @State private var name = ""
    @State private var username = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Spacer()
            Image("threads-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            VStack
            {
                TextField("Enter your email", text: $email)
                    .modifier(ThreadsTextFieldModifier())
                
                
                SecureField("Enter your password", text: $password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your full name", text: $name)
                    .modifier(ThreadsTextFieldModifier())
                
                
                TextField("Enter your username", text: $username)
                    .modifier(ThreadsTextFieldModifier())
       
            }
            
            //button
            Button{
                
            }label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352,height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }.padding(.vertical)
            Spacer()
             
            Divider()
            
            Button{
                dismiss()
            }label: {
                HStack(spacing: 3){
                    Text("Already have an account?")
                    
                    Text("Sign in")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
    }
    
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
