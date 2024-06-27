//
//  controlUiDeux.swift
//  ExerciceUi
//
//  Created by apprenant38 on 11/03/2024.
//

import SwiftUI

struct controlUiDeux: View {
    @State var temp: Double = 0.0
        
    var faren: Double {
        (32 + temp)
    }
    var celc: Double {
        (0.55 * (faren - 32))
    }
    var kelv: Double {
        (celc + 273.15)
    }
    
    var body: some View {
        
        ZStack{
            HStack (spacing: 0){
                Color(.orange)
                Color(.blue)
                Color(.purple)
                
            }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            HStack(spacing: 70){
                VStack (spacing: 10){
                    Text("Kelvin \(kelv, specifier: "%.2f")")
                }
                VStack (spacing: 10){
                    Text("Fahrenheit \(faren, specifier: "%.2f")")
                }
                VStack (spacing: 10){
                    Text("Celsius \(celc, specifier: "%.2f")")
                }
            }
            
            
            
            
            VStack{
                Spacer()
                Text("Temperatura")
                Slider(value:$temp, in: 0...80, step: 1)
            }
            .padding()
        }
        
        
    }
}

#Preview {
    controlUiDeux()
}
