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
        Text("Hello, world!")
        .padding()
    }
}

#Preview {
    ContentView()
}
