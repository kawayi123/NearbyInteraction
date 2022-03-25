//
//  ContentView.swift
//  swiftinteraction

import SwiftUI
import NearbyInteraction
import MultipeerConnectivity

struct ContentView: View {
    
    //Door deze te vermelden als @StateObject wordt de ui geupdate wanneer @Published properties in deze class wordt gewijzigd.
    @StateObject var niManager: NIManager = NIManager.shared
    var mpcManager: MPCManager = MPCManager()
    
    //MARK: - User Interface
    
    var body: some View {
        
        VStack {
            
            Text("Hello, world!")
            
            Button {
                print("Clicked on host")
                mpcManager.startAdvertising()
            } label: {
                Text("HOST")
            }
            
            Button {
                print("Clicked on join")
//                mpcManager.sendInvite()
            } label: {
                Text("JOIN")
            }
            
            Button {
                print("Clicked on send token")
                mpcManager.sendToken(token: "Hello there")
            } label: {
                Text("Send Token")
            }
            Text("Distance: ")
            Text("\(niManager.distance)m").font(.system(size: 40))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
