//
//  ContentView.swift
//  SwiftUI-iOS15-Alternate-App-Icons
//
//  Created by Jake Nelson on 13/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            Text("Change App Icon")
                .font(.title)
            
            HStack{
                
                Button(action: {
                    UIApplication.shared.setAlternateIconName(nil)
                }){
                    Image("AppIconImage")
                        .cornerRadius(20)
                }
                
                Button(action: {
                    UIApplication.shared.setAlternateIconName("BlueIcon")
                }){
                    Image("BlueImage")
                        .cornerRadius(20)
                }
                
                Button(action: {
                    UIApplication.shared.setAlternateIconName("GreenIcon")
                }){
                    
                    Image("GreenImage")
                        .cornerRadius(20)
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
