////
////  CardUpdatedView.swift
////  Projeto_MenuTech
////
////  Created by User on 01/12/23.
////
//
//import SwiftUI
//
//struct CardUpdatedView: View {
//
//    @State var isShowing: Bool = false
//
//    var body: some View {
//
//        Button("Salvar") {
//            withAnimation(.spring()) {
//                isShowing = true
//            }
//        }
//
//        if isShowing {
//            CardUpdated(isShowing: $isShowing)
//                .frame(width: 314,height: 414)
//        }
//
//    }
//
//}
//
//
//struct CardUpdated: View {
//
//    Rectangle()
//        .foregroundColor(.clear)
//        .frame(width: 328, height: 250)
//        .background(.white)
//        .cornerRadius(20)
//        .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
//    Image("RetanguloVerde")
//    Image("CardapioIcon")
//
//
//}
//
//
//struct CardUpdatedView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardUpdatedView()
//    }
//
//}
//
