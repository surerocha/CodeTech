//
//  ConsultarAvaliacoesView.swift
//  Projeto_MenuTech
//
//  Created by User on 28/11/23.
//

import SwiftUI

struct ConsultarAvaliacoesView: View {
    
    @EnvironmentObject var appState: AppState
    
    @State var dia: Date = .now
    
    func starType(index: Int) -> String{
        if let avaliacao = appState.avaliacoes[String(date: dia)] {
            Text(String(avaliacao.rating))
            return index <= avaliacao.rating ? "star.fill" : "star"
        }else{
            return "star"
        }
    }
    
    var body: some View {
        
        
                ZStack{
                    
                    Color("CorPrimaria")
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack(spacing:4){
                        
                        HStack{
                            
                            Text(String(date: dia))
                                .bold()
                                .font(.system(size:40))
                                .foregroundColor(.white)
                                .offset(x: 10, y: 70)
                            
                            Image("Bolinhas")
                                .frame(width: 80, height: 160)
                                .offset(x: 30, y: -20 )
                        }
                        
                        ZStack{
                            
                            Image("QuadradoLogin")
                                .resizable(capInsets: EdgeInsets())
                                .background(.white)
                                .frame(width: 400, height: 700)
                                .cornerRadius(40)
                                .offset(x: 0, y: 40)
                            
                            
                            
                            VStack (spacing:8){
                                
                                VStack {
                                    
                                    DatePicker("Dia da Semana", selection: $dia, displayedComponents: .date)
                                        .padding(.horizontal)
                                        .onChange(of: dia) { newValue in
                                            print(dia)
                                        }
                                    
//                                    if let avaliacao = appState.avaliacoes[String(date: dia)] {
//                                       Text(avaliacao.comentario)
//                                   }
//
                                    HStack(spacing: 20) {
                                        
                                        
                                        HStack(spacing: 8) {
                                            
                                            ForEach(1...5, id: \.self) {index in
                                                Image(systemName: self.starType(index: index))
                                                    .frame(width: 33, height: 33)
                                                    .font(Font.custom("SF Pro", size: 33))
                                                    .foregroundColor(Color.yellow)
                                                
//                                                    .onTapGesture {
//                                                        self.rating = index
//                                                    }
//
                                            }
                                            
                                        }
                                        
                                        VStack{
                                              
                                            if let avaliacao = appState.avaliacoes[String(date: dia)] {
                                                Text(String(avaliacao.rating))
                                                    .font(.largeTitle)
                                                    .fontWeight(.regular)
                                            }
                                            
                                            Text("Avaliações")
                                                .font(.title3)
                                                .fontWeight(.thin)
                                            
                                        }
                                        
                                    }
                                }
                                
                                    Spacer()
                                        .frame(height: 80)
                                    
                                    Text("Comentários:")
                                        .font(.headline)
                                        .fontWeight(.light)
                                        .frame(width: 340, alignment: .leading)
                                        
                                    
                                    VStack(spacing: 12){
                                        
                                        ZStack{
                                            Rectangle()
                                            .frame(width: 350, height: 70)
                                            .foregroundColor(.white)
                                            .cornerRadius(20)
                                            .shadow(color: Color.gray.opacity(0.6), radius: 5, x:0, y:2)
                                            
                                            if let avaliacao = appState.avaliacoes[String(date: dia)] {
                                                Text(avaliacao.comentario)
                                            }
                                    }
                                            
                                               
                                    
                                    }
                                
                                
                                
                                
                            }
                            
                        }
                    }
                }
            }
        

      
        
       
        
          
    }


struct ConsultarAvaliacoesView_Previews: PreviewProvider {
    static var previews: some View {
        ConsultarAvaliacoesView()
        .environmentObject(AppState())
    }
}
