//
//  ProfileView.swift
//  FinancialTracker
//
//  Created by apple on 9/18/25.
//


import SwiftUI

struct ProfileView : View {
    var body: some View {
        NavigationView{
            
            VStack{
                Text("Profile")
                    .font(.headline)
                
                Spacer()
            }
            .navigationBarTitle("Profile")
        }
    }
}


#Preview {
    ProfileView()
}
