//
//  naviMeteo.swift
//  ExerciceUi
//
//

import SwiftUI

struct naviMeteo: View {
    @State var shoback = false
    // var info: Meteo
    
    
    var body: some View {
        NavigationStack {
            Form{
                Text("Sun")
                Text("sun.max")
            }
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading){
                    Button("Back") {
                        shoback = true
                        print("About tapped!")
                    }
                    .sheet(isPresented: $shoback){
                        visual()
                    }
                }
            }
        }
    }
}



#Preview {
    naviMeteo()
}
