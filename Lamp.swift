//
//  Lamp.swift
//  LampExercise
//
//  Created by Octavio Lemgruber Portugal on 21/09/23.
//

import SwiftUI

struct Lamp: View {
    let isOn: Bool
    let type: Int
    
    var circleColor: Color {
        if isOn {
            if type == 1 {
                return Color(red: 0.97, green:0.83,
                    blue: 0.34)
            } else if type == 2 {
                return Color(red: 0.77, green: 0.89,
                    blue: 0.90)
            } else {
                return Color(red: 0.26, green: 0.54,
                    blue: 0.92)
            }
        } else {
            return Color(uiColor: .systemGray3)
        }
    }
    
    var iconName: String {
        var icon = ""
        
        if type == 1 {
            icon = "lightbulb"
        } else if type == 2 {
            icon = "lightbulb.led"
        } else {
            icon = "lightbulb.led.wide"
        }
        
        if isOn {
            icon += ".fill"
        }
        
        return icon
    }
    
    func iconColor() -> Color {
        if isOn {
            return .white
        } else {
            return Color(uiColor: .systemGray)
        }
    }
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 270, height: 270)
                .foregroundColor(circleColor)
            
            Image(systemName: iconName)
                .font(.system(size: 170))
                .foregroundColor(iconColor())
        }
    }
}

struct Lamp_Previews: PreviewProvider {
    static var previews: some View {
        Lamp(isOn: false, type: 1)
    }
}
