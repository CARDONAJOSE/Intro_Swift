//
//  visualDeatil.swift
//  ExerciceUi
//
//

import SwiftUI

struct visualDeatil: View {
    @State var shoback = false
    var info: Meteo
    
    var body: some View {
        VStack{
//            Text(info.icono)
//            Text(info.temp)
            Image(systemName: info.icono)
                .resizable()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .scaledToFit()
                .padding()
        }
        .navigationTitle(info.temp)
    }
}

#Preview {
    visualDeatil(info: Meteo(temp: "", icono: " "))
}
