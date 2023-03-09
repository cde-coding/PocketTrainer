//
//  TrainerView.swift
//  Pocket Trainer
//
//  Created by Diego Espinoza on 2/21/23.
//

import SwiftUI

struct trainingTips: Identifiable {
    
    let id = UUID()
    let name: String
    let icon: String
    var items: [trainingTips]?
    
}

struct TrainerView: View {
    
    let items: [trainingTips] = [.Recovery, .Training]
    var backgroundImage = Image("Background2")
    
var body: some View {
    
    NavigationView {
    
            
        List(items, children: \.items) { row in
                
            Image(systemName: row.icon)
                .renderingMode(.original)
            Text(row.name)
                
            }
            .navigationTitle("How to Progress")
            .listStyle(PlainListStyle())
            .cornerRadius(15)
            .background(backgroundImage)
            .padding(.horizontal)
        
            
        
        }
    }
}



struct TrainerView_Previews: PreviewProvider {
    static var previews: some View {
        TrainerView()
    }
}


extension trainingTips {
    
    
    static let sleep = trainingTips(name: "Sleep", icon: "bed.double.fill")
    static let diet = trainingTips(name: "Diet", icon: "fork.knife")
    static let other = trainingTips(name: "Other", icon: "baseball.diamond.bases")
    static let progression = trainingTips(name: "Progression Models", icon: "arrow.up.right")
    static let conditioning = trainingTips(name: "Conditioning", icon: "figure.jumprope")
    static let exercises = trainingTips(name: "Exercise Selection", icon: "dumbbell.fill")
    static let program = trainingTips(name: "Demo Program", icon: "figure.flexibility")
    
    static let Recovery = trainingTips(name: "Recovery", icon: "figure.cooldown", items: [trainingTips.sleep, trainingTips.diet, trainingTips.other])
    static let Training = trainingTips(name: "Training", icon: "figure.strengthtraining.traditional", items: [trainingTips.exercises, trainingTips.progression, trainingTips.conditioning, trainingTips.program])
    
    
}
