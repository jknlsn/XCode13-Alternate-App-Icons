//
//  ContentView.swift
//  SwiftUI-iOS15-Alternate-App-Icons
//
//  Created by Jake Nelson on 13/6/21.
//

import SwiftUI

struct ContentView: View {

    let iconNames = ["BlueIcon", "GreenIcon", "AppIcon"]

    var body: some View {
        VStack{
            
            Text("Change App Icon")
                .font(.title)
            
            HStack{
                ForEach(iconNames, id: \.self) { iconName in
                    Button(action: {
                        if iconName == "AppIcon" {
                            UIApplication.shared.setAlternateIconName(nil)
                        } else {
                            UIApplication.shared.setAlternateIconName(iconName)
                        }
                    }){
                        Image(iconName+"Image")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(20)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
