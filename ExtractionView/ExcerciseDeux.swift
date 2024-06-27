//
//  ExcerciseDeux.swift
//  ExerciceUi
//
//  Created by apprenant38 on 11/03/2024.
//

import SwiftUI

struct ExcerciseDeux: View {
    @State var poker: String = " "
    
    var body: some View {
        VStack {
            // faire sont blanc
            HStack{
                Spacer()
            }
            // espacer pour centre
            Spacer()
            HStack (spacing: 20){
                Button {
                    //action
                    
                    poker = "suit.club"
                } label: {
                    Label("Club", systemImage: "suit.club")
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                }
                
                
                //)
                Button {
                    //action
                    poker = "suit.spade"
                } label: {
                    Label("Spade", systemImage: "suit.spade")
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                }
                
            }
            
            .padding()
            .background(RoundedRectangle(cornerRadius: 20))
            .foregroundStyle(.black)
            Spacer()
            
            // attention hstack pour imprimer le result
            
            HStack{
                //Text("jose il est fort ")
                Image(systemName: poker)
                    .font(.system(size: 40))
                
            }
            Spacer()
            
            HStack (spacing: 20){
                Button {
                    //action
                    
                    poker = "diamond"
                } label: {
                    Label("Diamond", systemImage: "diamond")
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                }
                
                Button {
                    //action
                    poker = "heart"
                } label: {
                    Label("Heart", systemImage: "heart")
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                }
                
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.red)
            
                )
            HStack{
                Spacer()
            }
            Spacer()
        }
        
    }
}

#Preview {
    ExcerciseDeux()
}
