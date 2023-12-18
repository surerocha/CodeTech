//
//  EscolherDiaView.swift
//  Projeto_MenuTech
//
//  Created by User on 30/11/23.
//

import SwiftUI

struct EscolherDiaView: View {
    var body: some View {
        
        Text("Hello World")

    }
}
//        NavigationStack {
//            ZStack{
//
//                Image("OndaVerde")
//                    .frame(width: 100, height: 880, alignment: .top)
//
//                Text("Calendário")
//                    .bold().font(.title)
//                    .foregroundColor(.white)
//                    .offset(x: 0, y: -340)
//
//                VStack(spacing:2) {
//                    ZStack{
//                        Text("dd/mm/yyyy")
//                            .font(Font.custom("SF Pro", size: 15))
//                            .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
//                            .frame(width: 330, height: 380, alignment: .topLeading)
//
//
//                        Image(systemName: "calendar")
//                            .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.71))
//                            .frame(width: 327, height: 380, alignment: .topTrailing)
//
//                        Rectangle()
//                            .foregroundColor(.clear)
//                            .frame(width: 344, height: 2)
//                            .background(Color(hue: 0.0, saturation: 0.029, brightness: 0.896))
//                            .offset(y:-165)
//
//
//                    }
//                }
//
//
//
//                VStack(spacing: 16) {
//
//                    Spacer()
//                        .frame(height: 200)
//
//                    HStack(alignment: .center, spacing: 0) {
//
//                       // NavigationLink (destination: EditarCardapioView(refeicoes: .constant([]))) {
//
//                            ZStack{
//                                Rectangle()
//                                    .foregroundColor(.clear)
//                                    .frame(width: 349, height: 80)
//                                    .background(.white)
//                                    .cornerRadius(20)
//                                    .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
//
//                                Text("SEGUNDA-FEIRA")
//                                    .font(Font.custom("SF Pro", size: 15))
//                                    .foregroundColor(.black)
//                                    .frame(width: 138, height: 21, alignment: .topLeading)
//
//                                Image(systemName: "chevron.right")
//                                    .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.71))
//                                    .frame(width: 305, height: 21, alignment: .topTrailing)
//
//                                ZStack{
//
//                                    Image("RetanguloDatas")
//                                        .frame(width: 349, height: 0 , alignment: .leading)
//                                        .background(Color(red: 0.24, green: 0.75, blue: 0.46))
//
//                                    VStack (spacing: 8){
//
//                                        Text("2")
//                                            .font(Font.custom("SF Pro", size: 40))
//                                            .foregroundColor(.white)
//                                            .frame(width: 292, height: 26, alignment: .topLeading)
//
//                                        Text("OUTUBRO")
//                                            .font(Font.custom("SF Pro", size: 12))
//                                            .multilineTextAlignment(.center)
//                                            .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97).opacity(0.9))
//                                            .frame(width: 330, height:32, alignment: .leading)
//
//                                    }
//                                }
//                            }
//                        }
//                    }
//
//                    HStack(alignment: .center, spacing: 0) {
//
//                        //NavigationLink (destination: EditarCardapioView()) {
//                            ZStack{
//                                Rectangle()
//                                    .foregroundColor(.clear)
//                                    .frame(width: 349, height: 80)
//                                    .background(.white)
//                                    .cornerRadius(20)
//                                    .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
//
//                                Text("TERÇA-FEIRA")
//                                    .font(Font.custom("SF Pro", size: 15))
//                                    .foregroundColor(.black)
//                                    .frame(width: 138, height: 21, alignment: .topLeading)
//
//                                Image(systemName: "chevron.right")
//                                    .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.71))
//                                    .frame(width: 305, height: 21, alignment: .topTrailing)
//
//                                ZStack{
//
//                                    Image("RetanguloDatas")
//                                        .frame(width: 349, height: 0 , alignment: .leading)
//                                        .background(Color(red: 0.24, green: 0.75, blue: 0.46))
//
//                                    VStack (spacing: 8){
//
//                                        Text("3")
//                                            .font(Font.custom("SF Pro", size: 40))
//                                            .foregroundColor(.white)
//                                            .frame(width: 292, height: 26, alignment: .topLeading)
//
//                                        Text("OUTUBRO")
//                                            .font(Font.custom("SF Pro", size: 12))
//                                            .multilineTextAlignment(.center)
//                                            .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97).opacity(0.9))
//                                            .frame(width: 330, height:32, alignment: .leading)
//
//                                    }
//                                }
//                            }
//                       // }
//                    }
//                    HStack(alignment: .center, spacing: 0) {
//
//                      //  NavigationLink (destination: EditarCardapioView()) {
//                            ZStack{
//                                Rectangle()
//                                    .foregroundColor(.clear)
//                                    .frame(width: 349, height: 80)
//                                    .background(.white)
//                                    .cornerRadius(20)
//                                    .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
//
//                                Text("QUARTA-FEIRA")
//                                    .font(Font.custom("SF Pro", size: 15))
//                                    .foregroundColor(.black)
//                                    .frame(width: 138, height: 21, alignment: .topLeading)
//
//                                Image(systemName: "chevron.right")
//                                    .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.71))
//                                    .frame(width: 305, height: 21, alignment: .topTrailing)
//
//                                ZStack{
//
//                                    Image("RetanguloDatas")
//                                        .frame(width: 349, height: 0 , alignment: .leading)
//                                        .background(Color(red: 0.24, green: 0.75, blue: 0.46))
//
//                                    VStack (spacing: 8){
//
//                                        Text("4")
//                                            .font(Font.custom("SF Pro", size: 40))
//                                            .foregroundColor(.white)
//                                            .frame(width: 292, height: 26, alignment: .topLeading)
//
//                                        Text("OUTUBRO")
//                                            .font(Font.custom("SF Pro", size: 12))
//                                            .multilineTextAlignment(.center)
//                                            .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97).opacity(0.9))
//                                            .frame(width: 330, height:32, alignment: .leading)
//
//                                    }
//                                }
//                            }
//                        }
//                    }
//                    HStack(alignment: .center, spacing: 0) {
//
//                        //NavigationLink (destination: EditarCardapioView()) {
//                            ZStack{
//                                Rectangle()
//                                    .foregroundColor(.clear)
//                                    .frame(width: 349, height: 80)
//                                    .background(.white)
//                                    .cornerRadius(20)
//                                    .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
//
//                                Text("QUINTA-FEIRA")
//                                    .font(Font.custom("SF Pro", size: 15))
//                                    .foregroundColor(.black)
//                                    .frame(width: 138, height: 21, alignment: .topLeading)
//
//                                Image(systemName: "chevron.right")
//                                    .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.71))
//                                    .frame(width: 305, height: 21, alignment: .topTrailing)
//
//                                ZStack{
//
//                                    Image("RetanguloDatas")
//                                        .frame(width: 349, height: 0 , alignment: .leading)
//                                        .background(Color(red: 0.24, green: 0.75, blue: 0.46))
//
//                                    VStack (spacing: 8){
//
//                                        Text("6")
//                                            .font(Font.custom("SF Pro", size: 40))
//                                            .foregroundColor(.white)
//                                            .frame(width: 292, height: 26, alignment: .topLeading)
//
//                                        Text("OUTUBRO")
//                                            .font(Font.custom("SF Pro", size: 12))
//                                            .multilineTextAlignment(.center)
//                                            .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97).opacity(0.9))
//                                            .frame(width: 330, height:32, alignment: .leading)
//
//
//                                    }
//                                }
//                            }
//                        }
//                    }
//                    HStack(alignment: .center, spacing: 0) {
//
//                        NavigationLink (destination: EditarCardapioView()) {
//                            ZStack{
//                                Rectangle()
//                                    .foregroundColor(.clear)
//                                    .frame(width: 349, height: 80)
//                                    .background(.white)
//                                    .cornerRadius(20)
//                                    .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
//
//                                Text("SEXTA-FEIRA")
//                                    .font(Font.custom("SF Pro", size: 15))
//                                    .foregroundColor(.black)
//                                    .frame(width: 138, height: 21, alignment: .topLeading)
//
//                                Image(systemName: "chevron.right")
//                                    .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.71))
//                                    .frame(width: 305, height: 21, alignment: .topTrailing)
//
//                                ZStack{
//
//                                    Image("RetanguloDatas")
//                                        .frame(width: 349, height: 0 , alignment: .leading)
//                                        .background(Color(red: 0.24, green: 0.75, blue: 0.46))
//
//                                    VStack (spacing: 8){
//
//                                        Text("7")
//                                            .font(Font.custom("SF Pro", size: 40))
//                                            .foregroundColor(.white)
//                                            .frame(width: 292, height: 26, alignment: .topLeading)
//
//                                        Text("OUTUBRO")
//                                            .font(Font.custom("SF Pro", size: 12))
//                                            .multilineTextAlignment(.center)
//                                            .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97).opacity(0.9))
//                                            .frame(width: 330, height:32, alignment: .leading)
//
//                                    }
//                                }
//                            }
//                        }
//                    }
//
//                }
//
//                
//
//                .padding(0)
//                .frame(width: 349, height: 80, alignment: .center)
//                //.shadow(color: .black.opacity(0.15), radius: 6, x: 0, y: 2)
//            }
//        }
//    }
//}

struct EscolherDiaView_Previews: PreviewProvider {
    static var previews: some View {
        EscolherDiaView()
    }
}
