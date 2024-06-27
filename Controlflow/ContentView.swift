//
//  ContentView.swift
//  ExerciceUi
//
//  Created by apprenant38 on 07/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State var temp: Double = 0.0
        
    var faren: Double {
        (32 + temp)
    }
    var kelv: Double {
        (temp + 273.15)
    }
    
    var body: some View {
        
        ZStack{
            HStack (spacing: 0){
                ZStack{
                    Color.orange
                    VStack{
                        Text("Kelvin")
                        Text("\(kelv, specifier: "%.1f")")
                    }
                }
                ZStack{
                    Color.red
                    VStack{
                        Text("fahrenheit")
                        Text("\(faren, specifier: "%.1f")")
                    }
                }
                ZStack{
                    Color.blue
                    VStack{
                        Text("Celsius")
                        Text("\(temp, specifier: "%.1f")")
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Slider(value:$temp, in: 0...80, step: 1)
            }
            .padding()
        }
    }
    
}

#Preview {
    ContentView()
}
