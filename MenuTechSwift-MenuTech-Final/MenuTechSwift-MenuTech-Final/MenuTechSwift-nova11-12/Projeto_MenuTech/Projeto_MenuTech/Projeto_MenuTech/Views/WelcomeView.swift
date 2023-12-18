//
//  WelcomeView.swift
//  QRTechView
//
//  Created by User on 27/10/23.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image("Bordas")
                    .frame(width: 33, height: 38)
                    .frame(width: 34.5, height: 65, alignment: .topLeading)
                    
                VStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 206, height: 300)
                        .background(
                            Image("Logo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 206, height: 230)
                                .clipped()
                        )
                    
                    Text("Bem-vindo à MenuTech")
                        .font(
                            Font.custom("SF Pro", size: 24)
                                .weight(.bold)
                        )
                        .foregroundColor(Color.black)
                        .frame(width: 340, height: 20, alignment: .leading)
                    
                    Text("Acesse o cardápio do refeitório e faça suas avaliações de forma simples e rápida.")
                        .font(
                            Font.custom("B612", size: 15)
                        )
                        .foregroundColor(Color.black)
                        .frame(width: 340, height: 50, alignment: .leading)
                    
                    //Tipo de refeições é...
                    NavigationLink(destination: ExibirCardapioView(administrador: false)) {
                        ZStack{
                            Rectangle()
                                .frame(width: 340, height: 50)
                                .background(Color("CorPrimaria"))
                                .foregroundColor(Color("CorPrimaria"))
                                .cornerRadius(8)
                            VStack{
                                Text("Aluno")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                
                            }
                        }
                    }
                    
                    NavigationLink(destination: LoginAdmin()){
                        ZStack{
                            Rectangle()
                                .frame(width: 340, height: 50)
                                .foregroundColor(Color(.white))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color("CorPrimaria"), lineWidth: 2))
                            VStack{
                                Text("Administrador")
                                    .font(.headline)
                                    .foregroundColor(Color("CorPrimaria"))
                            }
                        }
                    }
//                    .navigationBarTitle("Inicial")
                    
                }
            }
            
        }
    }
}




struct TelaInicial_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
