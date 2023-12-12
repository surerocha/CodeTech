//
//  PopUpAvaliacao.swift
//  Projeto_MenuTech
//
//  Created by User on 06/12/23.
//

import SwiftUI


struct PopUpAvaliacaoView: View {
    
    @EnvironmentObject var appState: AppState
    
    @State var isShowing: Bool = true
    
    var body: some View {
       
        ZStack {

           Color.gray.ignoresSafeArea()
            Button("Salvar") {
                withAnimation(.spring()) {
                    isShowing = true

                }
            }
            
            if isShowing {
                PopUpAvaliacao(isShowing: $isShowing, refeicao: appState.refeicoes[0])
                    .frame(width: 314,height: 414)
            
            }
        }
    }
}

struct PopUpAvaliacao: View {
    
    @EnvironmentObject var appState: AppState
    
    @Environment(\.dismiss) var dismiss
    
    @Binding var isShowing: Bool
    @State var rating: Int?
    @State var comentario: String = ""

    
    let refeicao: Refeicao
    
    func starType(index: Int) -> String{
        if let rating = self.rating {
            return index <= rating ? "star.fill" : "star"
        }else{
            return "star"
        }
    }
    
    
    var body: some View {

//            Rectangle()
//                .foregroundColor(.clear)
//                .frame(width: 330, height: 400)
//                .background(.white)
//                .cornerRadius(27)
//                .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
        
        ZStack{
            
//            Button(action: {
//                isShowing = false
//                dismiss()
//            }) {
//                Image(systemName: "xmark")
//                    .resizable()
//                    .frame(width: 20, height: 20)
//                    .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.71))
//
//            }
            
        } //.offset(x:125, y:-160)
            
            
            ZStack{
                
                
                ZStack{
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 330, height: 400)
                        .background(.white)
                        .cornerRadius(27)
                        .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
                    
                    Button(action: {
                        isShowing = false
                        dismiss()
                    }) {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.71))
                            
                    }.offset(x:125, y:-160)
                    
                    VStack(spacing: 12){
                        
                        Text("Avalie seu almoço")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.17, green: 0.17, blue: 0.17))
                            .frame(alignment: .top)
                        
                        VStack(spacing: 8){
                            
                            Text("O que você achou do almoço hoje")
                                .font(.subheadline)
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                                                        
                            Text("Escolha entre 1 e 5 estrelas para classificar")
                                .font(.footnote)
                                .fontWeight(.ultraLight)
                                .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                            
                            VStack(spacing: 16){
                                HStack{
                                    ForEach(1...5, id: \.self) {index in
                                        Image(systemName: self.starType(index: index))
                                            .resizable()
                                            .frame(width: 32, height: 28)
                                            .foregroundColor(.yellow)
                                            .onTapGesture {
                                                self.rating = index
                                            }
                                    }
                                }
                                
                                //Text(rating != nil ? "Sua nota: \(rating!)" : " ")
                                
                                VStack(spacing: 24){
                                    
                                    Text("Comentários adicionais:")
                                        .font(.subheadline)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                                    
                                    TextField("Digite seu comentário aqui", text: $comentario)
                                        .font(Font.custom("SF Pro", size: 13))
                                        .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                                        .frame(width: 281, height: 90, alignment: .topLeading)
                                        .overlay(

                                            Rectangle()

                                                .stroke(Color(red: 0.87, green: 0.87, blue: 0.87), lineWidth: 1)
                                        )
                                }
                            }
                              
                        }
                    }
                    
                    
                    Image("ButtonPopUp")
                        .frame(width: 320, height: 400, alignment: .bottom)
                    
                    Button(action: {
                        
                        let avaliacao = Avaliacao(rating: rating ?? 0, comentario: comentario)
                        
                        appState.avaliacoes[String(date: refeicao.dia)] = avaliacao
                        
                        isShowing = false
                        dismiss()
                        
                    }) {
                        Text("Enviar Avaliação")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                            .background(Color("CorPrimaria"))
                            .cornerRadius(8)
                            .padding()
                    }
                    
                    .frame(height:430, alignment: .bottom)
                    
                }
                
                
            }
            
        }
    }

struct PopUpAvaliacao_Previews: PreviewProvider {
    static var previews: some View {
        PopUpAvaliacaoView()
            .environmentObject(AppState())
    }
}
