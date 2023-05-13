//
//  SwiftUIView.swift
//  WorkoutApp
//
//  Created by Palak on 30/04/23.
//

import SwiftUI

struct TitleWithButton: View {
    @State private var isActive : Bool
    @State var TopTitle : String
    @State var ButtonTitle : String
    @State var ButtonType: Int
    
    init(isActive: Bool, TopTitle: String, ButtonTitle: String, ButtonType: Int) {
        self.isActive = isActive
        self.TopTitle = TopTitle
        self.ButtonTitle = ButtonTitle
        self.ButtonType = ButtonType
    }
    var body: some View {
        VStack{
            HStack{
                Text(TopTitle).font(.system(size: 32, weight: .medium))
                Spacer()
            }
            .padding([.leading, .bottom])
            if(ButtonType == 1){
                                Button(action:{isActive = true}){
                                    HStack{
                                        Text(ButtonTitle).font(.system(size: 23, weight: .medium)).foregroundColor(.gray)
                                        Spacer()
                                        Image(systemName: "plus.app.fill").foregroundColor(.gray).font(.system(size: 23, weight: .semibold))
                                    }
                                }.buttonStyle(PrimaryButtonStyle())
            }
            else {
                Button(action:{isActive = true}){
                    HStack{
                        Text(ButtonTitle).font(.system(size: 23, weight: .medium)).foregroundColor(.gray)
                        Spacer()
                        Image(systemName: "plus.app.fill").foregroundColor(.gray).font(.system(size: 23, weight: .semibold)
                        )
                        
                    }
                }.buttonStyle(PrimaryButtonStyle()).confirmationDialog("Choose your Exercise", isPresented: $isActive, titleVisibility: .visible){
                    Button("Shoulders"){
                        ButtonTitle = "Shoulders"
                    }
                    Button("Chest"){
                        ButtonTitle = "Chest"
                    }
                    Button("Arms"){
                        ButtonTitle = "Arms"
                    }
                    Button("Back"){
                        ButtonTitle = "Back"
                    }
                    Button("Legs"){
                        ButtonTitle = "Legs"
                    }
                }
            }
        }
    }
}

struct TitleWithButton_Previews: PreviewProvider {
    static var previews: some View {
        TitleWithButton(isActive: true, TopTitle : "testing", ButtonTitle : "Choose your exercise", ButtonType: 2).preferredColorScheme(.dark)
    }
}
