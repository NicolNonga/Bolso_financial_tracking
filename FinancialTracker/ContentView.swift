//
//  ContentView.swift
//  FinancialTracker
//
//  Created by apple on 9/18/25.
//

import SwiftUI

struct ContentView: View {
    
    init (){
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
    }
    var body: some View {
        MainTabView()
    }
}

#Preview {
    ContentView()
}
