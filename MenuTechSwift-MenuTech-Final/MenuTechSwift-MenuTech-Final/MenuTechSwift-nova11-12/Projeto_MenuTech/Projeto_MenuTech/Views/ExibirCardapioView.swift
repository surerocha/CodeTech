//
//  ExibirCardapioView.swift
//  Projeto_MenuTech
//
//  Created by User on 28/11/23.
//

import SwiftUI

//struct ExibirCardapioView: View {
//    @ObservedObject var refeicaoData: RefeicaoData
//
//    var body: some View {
//        VStack {
//            Text("Informações do Cardápio")
//
//            $refeicaoData.refeicao.principal
//
//            $refeicaoData.refeicao.proteinas
//
//            $refeicaoData.refeicao.frutas
//
//            $refeicaoData.refeicao.bebidas
//            TextField("Principal", text: $refeicaoData.refeicao.principal)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//
//            TextField("Proteínas", text: $refeicaoData.refeicao.proteinas)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//
//            TextField("Frutas", text: $refeicaoData.refeicao.frutas)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//
//            TextField("Bebidas", text: $refeicaoData.refeicao.bebidas)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//        }
//        .padding()
//    }
//}

struct ExibirCardapioView: View {
    var refeicao: Refeicao

    var body: some View {
        VStack {
            // Exibir as variáveis na nova tela
            Text("Principal: \(refeicao.principal)")
            Text("Proteínas: \(refeicao.proteinas)")
            Text("Frutas: \(refeicao.frutas)")
            Text("Bebidas: \(refeicao.bebidas)")

            // Adicione qualquer outra coisa que você deseja exibir na tela
        }
        .padding()
        .navigationBarTitle("Detalhes da Refeição", displayMode: .inline)
    }
}
//
//struct ExibirCardapioView_Previews: PreviewProvider {
//    static var previews: some View {
//        // Criando uma instância de RefeicaoData e preenchendo com valores de exemplo
//        let refeicaoData = RefeicaoData()
//        refeicaoData.refeicao = Refeicao(principal: "Arroz e Feijão", proteinas: "Frango Grelhado", frutas: "Maçã", bebidas: "Suco de Laranja")
//
//        // Passando o objeto criado para a ExibirCardapioAluno
//        return ExibirCardapioView(refeicaoData: refeicaoData)
//    }
//}
