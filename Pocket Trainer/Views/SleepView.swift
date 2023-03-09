//
//  SleepView.swift
//  Pocket Trainer
//
//  Created by Diego Espinoza on 3/7/23.
//

import SwiftUI

struct SleepView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        ZStack {
            Image("Sleep")
                .resizable()
                .ignoresSafeArea()
            GeometryReader { geo in
                
                ZStack {
                    Rectangle()
                        .fill(colorScheme == .dark ? Color.black : Color.white)
                        .cornerRadius(20)
                        .padding(.horizontal)
                        .padding(.bottom)
                        .opacity(0.8)
                        .frame(width: geo.size.width )
                   
                    ContentView()
                }
            }
        }
    }
}

struct Recovery_View_Previews: PreviewProvider {
    static var previews: some View {
        SleepView()
    }
}

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                Text("Sleep")
                    .font(.custom("Dimitri", size: 60))
                    .position(x: 120, y: 50)
                ScrollView (showsIndicators: false) {
                    VStack {
                        
                        Text("""
    Lack of sleep is the number one factor preventing many lifters from reaching their natural limit

    Without adequate rest, you can't properly recover. The golden standard is 8-10 hours and if you struggle to consitently get enough of rest there are a couple of habits you can adopt;

    - Reset your circadian rhythm by going to sleep and waking up at the same time every day\n- Cut out electronics at minimum an hour before bed\n- Wear an eye mask or buy blacked out curtains\n- sleep in a cold room with warm blankets\n- wear headphones to sleep\n- play background noise\n- sleep alone if your pets/partner move a lot

    and if all else fails take some melatonin suppllements, but don't become dependent on them.

    For some this be a bit extreme, and that's okay. We are all in different parts of our journey and our priorities vary.

    But for those of you who are ready to take your strength and  muscle gains to the next level, this is your first step along  this path.\n
    """)
                        .frame(width: geo.size.width * 0.85)
                        .font(.custom("Dimitri", size: 20))
                    }
                    .position(x: 200, y: 400)
                }
                .frame(width: geo.size.width * 0.925, height: geo.size.height * 0.85)
                .position(x: geo.size.width * 0.45, y: 30)
                
                
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}
