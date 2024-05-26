//
//  ContentView.swift
//  WeatherDemo
//
//  Created by Antony Huaman Alikhan on 25/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
                Text("Your coordinates are: \(location.longitude), \(location.latitude)")
            } else {
                if locationManager.isLoading {
                    LoadingView()
                } else {
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
            
            
        }.background(Color(.darkGray))
            .preferredColorScheme(.dark)
        
        
    }
}

#Preview {
    ContentView()
}
