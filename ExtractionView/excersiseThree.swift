//
//  excersiseThree.swift
//  ExerciceUi
//
//  Created by apprenant38 on 11/03/2024.
//

import SwiftUI

struct excersiseThree: View {
    @State var rojo: Double = 0.0
    @State var verde: Double = 0.0
    @State var azul: Double = 0.0
    var body: some View {
        
        Spacer()
        VStack{
            Text("jose est tro fort")
            Color(red: rojo/255, green: verde/255, blue: azul/255)
                .frame(width: 220 , height: 180)
                                        
        }
        Spacer()
        ZStack{
            VStack{
                HStack{
                    // premier red
                    Text("0")
                    Slider(value: $rojo, in: 0...255, step: 1)
                    Text("255")
                    // deuxieme green
                    Text("0")
                    Slider(value: $verde, in: 0...255, step: 1)
                    Text("255")
                    // troisieme Blue
                    Text("0")
                    Slider(value: $azul, in: 0...255, step: 1)
                    Text("255")
                    
                }
                HStack{
                    Text("red:\(Int(rojo))")
                    Spacer()
                    Text("green:\(verde, specifier: "%.0f")")
                    Spacer()
                    Text("blue:\(azul, specifier: "%.0f")")
                }
                
            }
            .padding(.horizontal)
        }
        .padding()
        .background()
        .foregroundStyle(.blue)
}
    }


#Preview {
    excersiseThree()
}
