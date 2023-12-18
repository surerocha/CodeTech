//
//  LoginAdmin.swift
//  QRTechView
//
//  Created by User on 27/10/23.
//

import SwiftUI

struct LoginAdmin: View {
    
    @State private var usuario = ""
    @State private var senha = ""
    
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
                        
                        
                        VStack (spacing:12){
                            
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
                                
                                VStack(spacing: 2){
                                    
                                    Text("Usuário")
                                        .font(.subheadline)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                                        .frame(width: 340, height: 26, alignment: .leading)
                                        //.offset(x: 0, y: -10)
                                
                                    TextField("Digite seu usuário" , text: $usuario)
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
                                    
                                    TextField("Digite sua senha", text: $senha)
                                        .frame(width: 315 , height: 30, alignment: .center)
                                        .frame(width: 350, height: 64)
                                        .background(Color("CaixaTexto"))
                                        .cornerRadius(18)
                                    
                                }
                                
                            NavigationLink(destination: HomeAdminView()){
                                
                                ZStack{
                                    
                                    Spacer()
                                        .frame(height: 160)
                                   
                                    VStack (spacing:8){
                                        ZStack{
                                        Rectangle()
                                            .frame(width: 350, height: 64 )
                                            .background(Color("CorPrimaria"))
                                            .foregroundColor(Color("CorPrimaria"))
                                            .cornerRadius(20)
                                        
                                        Text("Login")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                    }
                                        NavigationLink(destination: ConsultarAvaliacoesView()){
                                            
                                            Text("Não é administrador? Vá para aluno.")
                                                .font(Font.custom("SF Pro", size: 13))
                                                .foregroundColor(.gray)
                                        
                                    }
                                    
                                    }
                                }
                            }
                            
                           
                                
                            }
                        }
                    }
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
