//
//  4.1 navigation.swift
//  ExerciceUi
//
//  Created by apprenant38 on 13/03/2024.
//

import SwiftUI

struct controM: View {
    
    var icono: String
    var tiempo: String
    
    var body: some View {
        HStack{
            Image(systemName: icono)
            .foregroundStyle(.blue)
            Text(tiempo)
        }
    }
}

#Preview {
    controFlowMeteo(icono: ".heart", tiempo: " ")
}
