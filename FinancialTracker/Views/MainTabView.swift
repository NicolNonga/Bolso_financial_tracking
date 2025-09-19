//
//  MainTabView.swift
//  FinancialTracker
//
//  Created by apple on 9/18/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView().tabItem{
                Label("Home", systemImage: "house")
            }
            
            ScannerView().tabItem {
                Label("Scanner", systemImage: "camera.viewfinder")
            }
            AnalysisView().tabItem{
                Label("Analysis", systemImage: "chart.bar.fill")
            }
//            
//            ChallengesView().tabItem{
//                Label("chanllenge", systemImage: "person.crop.circle")
//            }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    MainTabView()
}
