//
//  extractionUno.swift
//  ExerciceUi
//
//  Created by apprenant38 on 12/03/2024.
//

import SwiftUI

struct extractionUno: View {
    var body: some View {
        
        VStack(alignment: .leading){
            imprit(icon: "j.circle.fill", name: "jose", color: .blue)
            imprit(icon: "b.circle.fill", name: "abdela", color: .red)
            imprit(icon: "c.circle.fill", name: "bastien", color: .green)
            imprit(icon: "g.circle.fill", name: "gateau", color: .orange)
            imprit(icon: "h.circle.fill", name: "helio", color: .yellow)
            imprit(icon: "z.circle.fill", name: "zelia", color: .gray)
        }
        .padding()
    }
}
struct imprit: View{
    let icon : String
    let name : String
    let color : Color
    var body: some View{
        HStack{
            Image(systemName: icon)
                .foregroundStyle(color)
                .font(.system(size: 30))
                .frame(width: 60)
            Text(name)
                .foregroundStyle(.black)
                .font(.system(size: 30))
        }.font(.largeTitle)
    }
}
#Preview {
    extractionUno()
}




