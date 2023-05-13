//
//  SwiftUIView.swift
//  WorkoutApp
//
//  Created by Palak on 30/04/23.
//

import SwiftUI

struct CreateWorkout: View {
    var body: some View {
                VStack{
                        TitleWithButton(isActive: true, TopTitle: "Exercise", ButtonTitle: "Choose your Exercise", ButtonType: 2)
                        TitleWithButton(isActive: true, TopTitle: "Exercise", ButtonTitle: "Choose your Exercise", ButtonType: 1)
                        TitleWithButton(isActive: true, TopTitle: "Exercise", ButtonTitle: "Choose your Exercise", ButtonType: 1)
                    TitleWithButton(isActive: true, TopTitle: "Exercise", ButtonTitle: "Choose your Exercise", ButtonType: 1)
                    
                }.navigationBarTitle("Create Workout")
            .navigationBarBackButtonHidden(false)
    }
}
