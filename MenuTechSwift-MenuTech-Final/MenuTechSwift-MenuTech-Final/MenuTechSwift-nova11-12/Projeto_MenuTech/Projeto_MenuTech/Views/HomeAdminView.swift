
//  HomeAdminView.swift
//  QrTech
//
//  Created by User on 10/11/23.
//

import SwiftUI

struct HomeAdminView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack{
                    Image("OndaVerde")
                        .frame(width: 100, height: 880, alignment: .top)
                    
                    Text("Home")
                        .bold().font(.title)
                    //.font(Font.custom("SF Pro", size: 25))
                        .foregroundColor(.white)
                        .offset(x: 0, y: -340)
                    
                    VStack (spacing: 30){
                        Spacer()
                            .frame(height: 90)
                        NavigationLink(destination: EscolherDiaView()){
                            
                            ZStack{
                                
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 328, height: 250)
                                    .background(.white)
                                    .cornerRadius(20)
                                    .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
                                Image("RetanguloVerde")
                                Image("CardapioIcon")
                                
                                VStack{
                                    
                                    Text("Editar Cardápio")
                                        .font(Font.custom("SF Pro", size: 14))
                                        .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                                        .frame(width: 140, height: 30, alignment: .leading)
                                        .offset(x: -70, y: 100)
                                    
                                }
                                
                            }
                            
                        }
                        
                        NavigationStack{
                            VStack{
                                NavigationLink(destination: ConsultarAvaliacoesView()){
                                    ZStack{
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 328, height: 250)
                                            .background(.white)
                                            .cornerRadius(20)
                                            .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
                                        Image("RetanguloVerde")
                                        Image("AvaliacaoIcon")
                                        
                                        VStack{
                                            Text("Consultar Avaliações")
                                                .font(Font.custom("SF Pro", size: 14))
                                                .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                                                .frame(width: 140, height: 30, alignment: .leading)
                                                .offset(x: -70, y: 100)
                                            //  .navigationTitle("Home") //Como deixar branco😭
                                                .onAppear{
                                                    UINavigationBar.appearance().titleTextAttributes = [ .foregroundColor: UIColor.white]
                                              
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

struct HomeAdminView_Previews: PreviewProvider {
    static var previews: some View {
        HomeAdminView()
    }
}

