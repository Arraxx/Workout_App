//
//  ContentView.swift
//  WorkoutApp
//
//  Created by Palak on 26/04/23.
//

import SwiftUI

struct MainView: View {
    @State private var isActive = false
    @Environment(\.colorScheme) var colorScheme
    var check = 0
    var body: some View {
        NavigationView {
            GeometryReader{Proxy in
                VStack{
                    Spacer().frame(height: Proxy.size.height * 0.10)
                    Text("Boronto Fitness").font(.system(size:42, weight: .medium)).foregroundColor(Color.gray).multilineTextAlignment(.leading)
                    Spacer()
                    NavigationLink(destination: CreateWorkout(), isActive: $isActive){
                        Button(action:{isActive = true}){
                            HStack{
                                Image(systemName: "plus.circle").foregroundColor(.gray).font(.system(size: 24, weight: .bold))
                                Text("Create a workout").foregroundColor(.gray).font(.system(size: 19, weight: .bold))
                            }
                        }.buttonStyle(PrimaryButtonStyle()).padding(60)
                    }
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Image("jim").resizable().aspectRatio(contentMode: .fill)).edgesIgnoringSafeArea(.all)
            }
        }.accentColor(.primary)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().preferredColorScheme(.dark)
        MainView().preferredColorScheme(.light)
    }
}
