//
//  PopUpLogin.swift
//  Projeto_MenuTech
//
//  Created by User on 05/12/23.
//

import SwiftUI

struct PopUpLoginView: View {
    
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
                        PopUpLogin(isShowing: $isShowing)
                            .frame(width: 314,height: 414)
                    
                    }
                }
            }
            
        }


        struct PopUpLogin: View {
            
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
                    VStack (spacing: 44){
                     
                        Image(systemName: "person.crop.circle.fill.badge.xmark")
                            
                            .resizable()
                            .foregroundColor(Color("CorPrimaria"))
                            .frame(width: 145, height: 120, alignment: .center)
                        
                        Text("Usuário não encontrado.")
                            .font(.title2)
                            .fontWeight(.medium)
                            .frame(width: 240, height: 2, alignment: .center)
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

struct PopUpLoginView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpLoginView()
    }
}
