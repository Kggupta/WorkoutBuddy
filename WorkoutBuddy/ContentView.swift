//
//  ContentView.swift
//  WorkoutBuddy
//
//  Created by Keshav Gupta on 2023-04-03.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        TabView {
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            StatisticsView()
                .tabItem {
                    Image(systemName: "chart.bar")
                    Text("Statistics")
                }
        }
        .accentColor(Color("TabViewAccent"))
    }
}

