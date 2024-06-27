//
//  ListJaime.swift
//  ExerciceUi
//
//  Created by apprenant38 on 13/03/2024.
//

import SwiftUI

struct ListJaime: View {
    var jaimes = [
        tempJaime(temp: "sun", icono: "sun.max"),
        tempJaime(temp: "pluie", icono: "cloud.heavyrain"),
    ]
    var jaimesPas = [
        tempJaime(temp: "radiacion", icono: "sun.max.trianglebadge.exclamationmark"),
        tempJaime(temp: "storm", icono: "cloud.bolt"),
        tempJaime(temp: "tornado", icono: "tornado.circle")
    ]
    var body: some View {
        List {
            Section(header: Text("Temp jaime")) {
                ForEach(jaimes){ tempJaime in
                        controFlowMeteo(icono: tempJaime.icono, tiempo: tempJaime.temp)
                }
            }
            Section(header: Text("Temp jaimes pas")) {
                ForEach(jaimesPas){ tempJaime in
                    
                        controFlowMeteo(icono: tempJaime.icono, tiempo: tempJaime.temp)
                }
            }
        }
    }
}

#Preview {
    ListJaime()
}
