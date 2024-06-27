//
//  4.2 nav.swift
//  ExerciceUi
//
//

import SwiftUI

struct visual: View {
    @State var shoadd = false
    var temps = [
        Meteo(temp: "sun", icono: "sun.max"),
        Meteo(temp: "cloud", icono: "cloud.fill"),
        Meteo(temp: "radiacion", icono: "sun.max.trianglebadge.exclamationmark"),
        Meteo(temp: "pluie", icono: "cloud.heavyrain"),
        Meteo(temp: "storm", icono: "cloud.bolt"),
        Meteo(temp: "tornado", icono: "tornado.circle")
    ]
    
    var body: some View {
        NavigationStack{
            List(temps){ meteo in
                NavigationLink {
                    visualDeatil(info: meteo)
                } label: {
                    controFlowMeteo(icono: meteo.icono, tiempo: meteo.temp)
                }
            }
            .toolbar {
                Button("About") {
                    shoadd = true
                    
                    print("About tapped!")
                }
                .sheet(isPresented: $shoadd){
                    naviMeteo()
                }
            }
        }
    }
}

#Preview {
    visual()
}
