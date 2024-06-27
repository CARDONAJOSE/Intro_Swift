//
//  controlUiUno.swift
//  ExerciceUi
//
//  Created by apprenant38 on 11/03/2024.
//

import SwiftUI

struct controlUiUno: View {
    @State var velocidad: Double = 0.0


    var body: some View {
        
        Spacer()
        
        VStack{
            
            ZStack {
                
                Text("\(Int(velocidad))")
                
                Circle()
                    .stroke(velocidad < 100 ? .blue : .red, lineWidth: 20)
                    .padding()
            }
            
            Spacer()
            VStack{
                //velocidad =
                Text(velocidad < 100 ? "Vitesse reglamentaire" : "exces de vitesse")
                Slider(value: $velocidad, in: 0...300, step: 1)
            }
            .padding()
            
        }
    }
}

#Preview {
    controlUiUno()
}
