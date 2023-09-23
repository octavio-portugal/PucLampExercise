//
//  ContentView.swift
//  LampExercise
//
//  Created by Octavio Lemgruber Portugal on 21/09/23.
//

import SwiftUI

struct LampExercise: View {
    @State var lampIsOn = false
    @State var lampType = 1
    
    var body: some View {
        VStack(spacing: 12) {
            Lamp(isOn: lampIsOn, type: lampType)
                .padding(.bottom)
            
            HStack {
                Image(systemName:
                    "lightbulb.circle.fill")
                    .font(.system(size: 28))
                    .foregroundColor(.gray)
                
                Toggle("Lampada", isOn: $lampIsOn)
            }
            
            Picker("Tipos", selection: $lampType){
                Text("Quente").tag(1)
                Text("Neutro").tag(2)
                Text("Frio").tag(3)
            }.pickerStyle(.segmented)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LampExercise()
    }
}
