//
//  Refeicao.swift
//  Projeto_MenuTech
//
//  Created by User on 08/12/23.
//

import Foundation

struct Refeicao: Identifiable {
    let id = UUID()
    var dia: Date
    var principal: String
    var proteinas: String
    var frutas: String
    var bebidas: String
}
