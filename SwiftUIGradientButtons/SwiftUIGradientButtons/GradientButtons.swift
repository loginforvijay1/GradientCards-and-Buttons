//
//  ContentView.swift
//  SwiftUIGradientButtons
//
//  Created by Vemireddy Vijayasimha Reddy on 08/04/24.
//

import SwiftUI

struct GradientButtons: View {
    var brandGradient = Gradient(colors: [ Color(.systemTeal), Color(.systemPurple), Color(.systemOrange), Color(.systemTeal)])
    var body: some View {
        VStack (spacing: 60) {
            
            Button(action: {
                
            }, label: {
                Text("Linear Gradient")
                    .foregroundStyle(Color.white)
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(LinearGradient(gradient: brandGradient, startPoint: .leading, endPoint: .trailing))
                    .clipShape(Capsule())
            })
            
            Button(action: {}, label: {
                Text("Liner Gradient")
                    .bold()
                    .frame(width: 280, height: 50)
                    .overlay( Capsule().stroke(LinearGradient(gradient: brandGradient, startPoint: .leading, endPoint: .trailing), lineWidth: 5.0))
            })
            
            Button(action: {}, label: {
                Text("RadialGradient")
                    .frame(width: 180, height: 180)
                    .bold()
                    .background(RadialGradient(gradient: brandGradient, center: .center, startRadius: 5, endRadius: 120))
                    .clipShape(Circle())
            })
            
            Button(action: {}, label: {
                Text("Angular")
                    .frame(width: 180, height: 180)
                    .bold()
                    .background(AngularGradient.init(gradient: brandGradient, center: .center, angle: .degrees(90)))
                    .clipShape(Circle())
            })
        }
        .padding()
    }
}

#Preview {
    GradientButtons()
}
