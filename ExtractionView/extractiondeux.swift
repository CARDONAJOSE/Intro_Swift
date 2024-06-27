//
//  extractiondeux.swift
//  ExerciceUi
//
//  Created by apprenant38 on 12/03/2024.
//

import SwiftUI

struct extractiondeux: View {
    @State var changeIcon = ""
    var body: some View {
        Spacer()
        VStack{
            Image(systemName: changeIcon)
                .font(.system(size: 80))
        }
        Spacer()
        HStack{
            structDeux(changeIcon:$changeIcon ,name: "tortue", icon: "tortoise", color: .red)
            structDeux(changeIcon:$changeIcon ,name: "chiene", icon: "dog.fill", color: .blue)
            structDeux(changeIcon:$changeIcon ,name: "paen", icon: "hare.fill", color: .red)
            structDeux(changeIcon:$changeIcon ,name: "chate", icon: "cat.fill", color: .blue)
        }
        Spacer()
    }
}
#Preview {
    extractiondeux()
}
