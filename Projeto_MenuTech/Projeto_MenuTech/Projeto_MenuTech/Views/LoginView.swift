//
//  LoginAdmin.swift
//  QRTechView
//
//  Created by User on 27/10/23.
//

import SwiftUI

struct LoginAdmin: View {
    
    @State private var usuario = "Admin"
    @State private var senha = "123"
    @State private var usuarioRecebido = ""
    @State private var senhaRecebida = ""
    @State private var isLogged = false
    @State var isShowing: Bool = false
    
    var body: some View {
        
        NavigationStack{
            
            ZStack {
                
                Color("CorPrimaria")
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing:4){
                    
                    HStack{
                        
                        Text("Login")
                            .bold()
                            .font(.system(size:40))
                            .foregroundColor(.white)
                            .offset(x: -75, y: 70)
                        
                        Image("Bolinhas")
                            .frame(width: 80, height: 160)
                            .offset(x: 130, y: -20 )
                    }
                    
                    ZStack{
                        
                        Image("QuadradoLogin")
                            .resizable(capInsets: EdgeInsets())
                            .background(.white)
                            .frame(width: 400, height: 700)
                            .cornerRadius(40)
                            .offset(x: 0, y: 40)
                        
                        
                        VStack (spacing:4){
                            
                            VStack {
                                
                                ZStack{
                                    Text("Bem-vindo de volta")
                                        .fontWeight(.medium)
                                        .font(.system(size: 24))
                                        .foregroundColor(Color(red: 0.329, green: 0.33, blue: 0.33))
                                        .frame(width: 340, height: 120, alignment: .topLeading)
                                   
                                    Text("Olá! Faça login para continuar.")
                                        .font(.subheadline)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                                        .padding(0.0)
                                        .frame(width: 340, height: 40, alignment: .topLeading)
                                    
                                }
                                
                            }
                            
                            VStack (spacing: 4) {
                                
                              VStack(spacing: 8){
                                    
                                    Text("Usuário")
                                        .font(.subheadline)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                                        .frame(width: 340, height: 26, alignment: .leading)
                                        //.offset(x: 0, y: -10)
                                
                                    TextField("Digite seu usuário" , text: $usuarioRecebido)
                                        .frame(width: 315 , height: 33, alignment: .center)
                                        .frame(width: 350, height:64)
                                        .background(Color("CaixaTexto"))
                                        .cornerRadius(18)
                                    
                                }
                            
                                VStack(spacing:2){
                                    
                                    Text("Senha")
                                        .font(.subheadline)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                                        .frame(width: 340, height: 26, alignment: .leading)
                                    
                                    SecureField("Digite sua senha", text: $senhaRecebida)
                                        .frame(width: 315 , height: 30, alignment: .center)
                                        .frame(width: 350, height: 64)
                                        .background(Color("CaixaTexto"))
                                        .cornerRadius(18)
                                    
                                }
                                
                                Button(action: {
                                    if (usuarioRecebido == usuario && senhaRecebida == senha) {
                                        isLogged = true
                                    } else {
                                        isShowing = true
                                    }
                                }) { Text("Login")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity)
                                        .frame(width: 350, height: 64 )
                                        .background(Color("CorPrimaria"))
                                        .cornerRadius(20)
                                        .padding()
                                }
                                
                                
                                NavigationLink(destination: HomeAdminView(), isActive: $isLogged) {
                                    EmptyView()
                                    
                                }
                               
                                
                                NavigationLink(destination: ExibirCardapioView(administrador: false)) {
                                    Text("Não é administrador? Vá para aluno.")
                                        .font(Font.custom("SF Pro", size: 13))
                                        .foregroundColor(.gray)
                                }
                                


                                    Spacer()
                                        .frame(height: 100)

                            
                           
                                
                            }
                        }
                    }
                }
                
                if isShowing {
                    PopUpLogin(isShowing: $isShowing)
                        .frame(width: 314, height: 414)
                }
            }
        }
    }
}

struct LoginAdmin_Previews: PreviewProvider {
    static var previews: some View {
        LoginAdmin()
    }
}
