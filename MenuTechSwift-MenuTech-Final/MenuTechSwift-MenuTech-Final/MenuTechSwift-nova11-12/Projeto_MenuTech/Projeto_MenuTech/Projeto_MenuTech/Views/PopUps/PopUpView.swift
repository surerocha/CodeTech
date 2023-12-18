//
//  TelaDoPopUp.swift
//  QRTechView
//
//  Created by User on 24/11/23.
//

import SwiftUI

struct PopUpView: View {
    
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
                PopUp(isShowing: $isShowing)
                    .frame(width: 314,height: 414)
                
            }
        }
    }
}


struct PopUp: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State var text: String = ""
    @Binding var isShowing: Bool
    
    var body: some View {
        
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 330, height: 400)
            .background(.white)
            .cornerRadius(27)
            .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
        
        ZStack{
            Button(action: {
                isShowing = false
                dismiss()
            }) {
                Image(systemName: "xmark")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.71))
                    
            }
            
        } .offset(x:125, y:-160)
        
        ZStack{
            VStack (spacing: 38){
                
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
                    dismiss()
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

struct PopUpView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpView()
    }
    
}
