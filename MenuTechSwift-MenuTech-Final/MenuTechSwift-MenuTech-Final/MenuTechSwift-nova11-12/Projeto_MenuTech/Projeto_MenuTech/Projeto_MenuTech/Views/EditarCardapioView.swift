
//
//  EditarCardapioView.swift
//  ProjetoQRCode
//
//  Created by User on 22/11/23.
//

import SwiftUI



struct EditarCardapioView: View {
        
    @EnvironmentObject var appState: AppState
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var refeicao = Refeicao(dia: .now, principal: "", proteinas: "", frutas: "", bebidas: "")
    @State private var exibirCardapio = false
    @State var isShowing: Bool = false
   
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                
                VStack{
                    Image("OndaVerde")
                        .frame(width: 100, height: 880, alignment: .top)
                        .ignoresSafeArea()
                    
                }
                
                VStack (spacing: 28){
                    
                    Spacer()
                        .frame(height: 80)
                    
                    Text("Editar Cardápio")
                        .bold().font(.title)
                        .foregroundColor(Color(red: 0.24, green: 0.75, blue: 0.46))
                        .frame(width: 224, height: 32, alignment: .top)
                        .offset(x:-70, y:15)
                    
                    
                    Text("Olá! Preencha os campos do formulário para criar uma nova refeição.")
                        .font(Font.custom("SF Pro", size: 13))
                        .foregroundColor(Color(red: 0.337, green: 0.341, blue: 0.356))
                        .frame(width: 370, height: 46, alignment: .topLeading)
                        .offset(x:15, y:-2)
                    
                    VStack (spacing: 28){
                        
                        DatePicker("Dia da Semana", selection: $refeicao.dia, displayedComponents: .date)
                            .padding(.horizontal)
                            .foregroundColor(Color(red: 0.337, green: 0.341, blue: 0.356))
                            .frame(width: 370, height: 46, alignment: .topLeading)
                        
                        ZStack{
                            
                            
                            TextField("Principal", text: $refeicao.principal)
                                .font(Font.custom("SF Pro", size: 13))
                                .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                                .frame(width: 340, height: 50, alignment: .topLeading)
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 344, height: 2)
                                .background(Color(hue: 0.0, saturation: 0.029, brightness: 0.896))
                        }
                        
                        ZStack{
                            
                            TextField("Proteínas", text: $refeicao.proteinas)
                                .font(Font.custom("SF Pro", size: 13))
                                .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                                .frame(width: 340, height: 50, alignment: .topLeading)
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 344, height: 2)
                                .background(Color(hue: 0.0, saturation: 0.029, brightness: 0.896))
                            
                        }
                        ZStack{
                            
                            TextField("Frutas", text: $refeicao.frutas)
                                .font(Font.custom("SF Pro", size: 13))
                                .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                                .frame(width: 340, height: 50, alignment: .topLeading)
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 344, height: 2)
                                .background(Color(hue: 0.0, saturation: 0.029, brightness: 0.896))
                            
                        }
                        ZStack{
                            
                            TextField("Bebidas", text: $refeicao.bebidas)
                                .font(Font.custom("SF Pro", size: 13))
                                .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                                .frame(width: 340, height: 50, alignment: .topLeading)
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 344, height: 2)
                                .background(Color(hue: 0.0, saturation: 0.029, brightness: 0.896))
                            
                        }
                        
                        
                        HStack(alignment: .top, spacing: 0) {
                            
                            Button(action: {
                                
                                appState.refeicoes.append(refeicao)
                                isShowing = true
                                
                                
                                
                            })  {
                                Text("Salvar")
                                    .bold().font(.headline)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 40)
                                    .frame(width: 354.50665, height: 50)
                                    .background(Color("CorPrimaria"))
                                    .cornerRadius(8)
                                    .padding()
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
                if isShowing {
                    PopUp(isShowing: $isShowing)
                        .frame(width: 314,height: 414)
                }
                
            }
            
        }
        .background(Color.white)
        .navigationBarBackButtonHidden(true) // Oculta o botão de volta padrão
        .navigationBarItems(leading: backButtonEditarCardapio(presentationMode: presentationMode))
    }
}

    
        func backButtonEditarCardapio(presentationMode: Binding<PresentationMode>) -> some View {
                Button(action: {
                    withAnimation(.linear) {
                        presentationMode.wrappedValue.dismiss() // Isso volta para a tela anterior com animação
                    }
                }) {
                    Image(systemName: "arrow.left")
                        .foregroundColor(.black)
                        .foregroundColor(.black)
                        .frame(width: 64, height: 64)
                        .offset(x: -10,y: -20)
                }
            }

struct EditarCardapioView_Previews: PreviewProvider {
    static var previews: some View {
        EditarCardapioView()
            .environmentObject(AppState())
    }
}
