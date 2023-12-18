//
//  ExibirCardapioView.swift
//  Projeto_MenuTech
//
//  Created by User on 28/11/23.
//


import SwiftUI


struct ExibirCardapioView: View {
    
    @EnvironmentObject var appState: AppState
    
    let administrador: Bool
    
    @State var adicionarRefeicao = false
    @State var avaliarRefeicao = false
    @State var isShowing: Bool = false
    
    
    var body: some View {
        NavigationStack {
            ZStack{
                Image("OndaVerde")
                    .frame(width: 100, height: 880, alignment: .top)
                    .ignoresSafeArea()
                
                Text("Cardápio")
                    .font(Font.custom("SF Pro", size: 30)
                        .weight(.bold))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 700, alignment: .top)
                
                
                Image("imgTelaCardapio")
                    .frame(width: 100, height: 30, alignment: .top)
                    .offset(x: 0, y: -220)
                
                
                
                TabView {
                    ForEach(appState.refeicoes) { refeicao in
                        ExibirReficaoView(refeicao: refeicao)
                            .overlay(
                                                           Group {
                                                               if administrador {
                                                                   Button("Excluir") {
                                                                       deleteItem(refeicao)
                                                                   }
                                                                   .frame(width: 70, height: 30)
                                                                   .background(Color.clear)
                                                                   .foregroundColor(.red)
                                                                   .cornerRadius(8)
                                                                   .padding()
                                                                   .offset(x: 5, y: 275)
                                                               }
                                                           }
                                                       )
                                                        
                    }
                                    }
                
               .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                //.navigationBarTitle("Cardápio", displayMode: .inline)
                .toolbar {
                    ToolbarItem {
                        if administrador {
                            Button("Adicionar") {
                                adicionarRefeicao = true
                            }
                            .fullScreenCover(isPresented: $adicionarRefeicao) {
                                EditarCardapioView()
                                
                            }
                            
                        } else {
                            Button("Avaliar"){
                                avaliarRefeicao = true
                                onTapGesture {
                                    isShowing = true
                                }
                            }
                            
                            .fullScreenCover(isPresented: $avaliarRefeicao) {
                                PopUpAvaliacao(isShowing: $isShowing, refeicao: appState.refeicoes[0])
                                    .frame(width: 314, height: 414)
                                
                            }
                        }
                    }
                }
            }
        }
    }
    func deleteItem(_ refeicao: Refeicao) {
        appState.refeicoes.removeAll { $0.id == refeicao.id }
    }}
//}

struct ExibirReficaoView: View {
    
    let refeicao: Refeicao
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .frame(width: 190, height: 85)
                .cornerRadius(4)
                .foregroundColor(Color("CorPrimaria"))
                .offset(x: 0, y: -140)
            
            Text(refeicao.dia.formatted(date: .abbreviated, time: .omitted))
                .font(.headline)
                .offset(x: 0, y: -164)
                .foregroundColor(.white)
            
            
            Rectangle()
                .frame(width: 290, height: 460, alignment: .top)
                .foregroundColor(.white)
                .cornerRadius(25)
                .shadow(color: Color.gray.opacity(0.6), radius: 5, x:0, y:2)
                .offset(x: 0, y: 80)
            
            VStack (spacing: 36){
                
                Spacer()
                    .frame(height: 100)
                
                HStack{
                    
                    Image("GarfoFaca")
                    
                    VStack{
                        Text("Principal:")
                            .font(.title3)
                            .bold()
                        
                        Text("\(refeicao.principal)")
                            .multilineTextAlignment(.center)
                    }
                }
                
                HStack{
                    Image("Frigideira")
                    
                    VStack{
                        Text("Proteínas: ")
                            .font(.title3)
                            .bold()
                        
                        Text("\(refeicao.proteinas)")
                        
                    }
                }
                
                HStack{
                    Image("Frutas")
                    
                    VStack{
                        Text("Frutas: ")
                            .font(.title3)
                            .bold()
                        
                        Text("\(refeicao.frutas)")
                    }
                }
                
                HStack{
                    Image("Copo")
                    
                    VStack{
                        Text("Bebidas: ")
                            .font(.title3)
                            .bold()
                        
                        Text("\(refeicao.bebidas)")
                    }
                }
                
            }
        }
        
        .padding()
    }
    }

struct ExibirCardapioView_Previews: PreviewProvider {
    static var previews: some View {
        ExibirCardapioView(administrador: true)
            .environmentObject(AppState())

    }
}
