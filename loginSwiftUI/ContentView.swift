//
//  ContentView.swift
//  loginSwiftUI
//
//  Created by user on 26/4/2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var user = ""
    @State private var password = ""
    @State private var wrongUser = 0
    @State private var wrongPassword = 0
    @State private var showingLogin = false
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                VStack{
                    Text("LOGIN")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Username ",text: $user)
                        .padding()
                        .frame(width: 300,height: 50)
                        .background(Color.black.opacity(0.1))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongUser))
                    
                    SecureField("Password ",text: $password)
                        .padding()
                        .frame(width: 300,height: 50)
                        .background(Color.black.opacity(0.1))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongPassword))
                    
                    Button("Login"){
                        authUser(user: user, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300,height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: Text(" Your are logged in @\(user)"), isActive: $showingLogin){
                        EmptyView()
                    }
                }
            }
        }
        .navigationBarHidden(true)
    }
    func authUser(user : String , password : String){
        if user.lowercased() == "admin123"{
            wrongUser = 0
            if password.lowercased()=="abc123"{
                wrongPassword = 0
                showingLogin = true
            } else {
                wrongPassword=2
            }
        }else{
            wrongUser=2
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
