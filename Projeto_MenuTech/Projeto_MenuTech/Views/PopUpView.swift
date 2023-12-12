//
//  TelaDoPopUp.swift
//  QRTechView
//
//  Created by User on 24/11/23.
//

import SwiftUI

struct PopUpView: View {
    
    @State var isShowing: Bool = false
    
    var body: some View {
        
        ZStack {
            
           Color.gray.ignoresSafeArea()
            Button("Salvar") {
                withAnimation(.spring()) {
                    isShowing = true
                    
                }
            }
            if isShowing {
                PopUp(isShowing: $isShowing)
                    .frame(width: 314,height: 414)
            
            }
        }
    }
    
}


struct PopUp: View {
    @State var text: String = ""
    @Binding var isShowing: Bool
    
    var body: some View {
        
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 330, height: 400)
            .background(.white)
            .cornerRadius(27)
            .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
        
        Image(systemName: "xmark")
            .resizable()
            .frame(width: 20, height: 20)
            .frame(width: 280, height: 345, alignment: .topTrailing)
            .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.71))
        
        ZStack{
            VStack (spacing: 38){
                //                Image(systemName: "checkmark.circle.fill")
                //                    .resizable()
                //                    .frame(width: 160, height: 160)
                
//                Button(action: {
//
//
//                })
                Image("Check")
                    .foregroundColor(Color("CorPrimaria"))
                
                
                Text("Cardápio Atualizado")
                    .font(.title2)
                    .frame(width: 220, height: 2, alignment: .center)
            }
            ZStack{
                
                Image("ButtonPopUp")
                    .frame(width: 320, height: 400, alignment: .bottom)
                
                Button(action: {
                    isShowing = false
                    
                }) {
                    Text("Concluído")
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


//struct PopUp: View {
//
//    @State var text: String = ""
//    @Binding var isShowing: Bool
//
//
//    var body: some View {
//        RoundedRectangle(cornerSize: CGSize(width: 27, height: 27))
//            .fill(.white)
//            .overlay {
//                VStack(spacing: 24) {
//                    VStack(spacing: 16) {
//                        Text("Avalie seu almoço")
//                            .font(.title2)
//                            .fontWeight(.semibold)
//                        VStack(spacing: 8) {
//                            Text("O que você achou do almoço?")
//                            VStack(spacing: 12) {
//                                Text("Escolha entre 1 e 5 estrelas para classificar")
//                                //"ESTRELAS"
//                            }
//                        }
//                    }
//                    Text("Comentarios adicionais")
//                    TextEditor(text: $text).border(.gray)
//                        .frame(width: 247,height: 79)
//                        .cornerRadius(2)
//                    Spacer()
//                        Rectangle()
//                        .fill(Color("CorPrimaria"))
//                        .frame(height: 40)
//                        .onTapGesture {
//                            isShowing = false
//                        }
//                }
//                .foregroundStyle(.black)
//            }
//    }
//
//}


struct PopUpView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpView()
    }
    
}
