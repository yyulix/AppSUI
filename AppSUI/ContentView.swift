//
//  ContentView.swift
//  AppSUI
//
//  Created by Yulia Popova on 31.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabSelection: Int = 0
    
    var body: some View {
        TabView(selection: $tabSelection) {
            DashboardScreen()
                .tag(0)
                .tabItem {
                    VStack {
                        Text("Dashboard")
                        Image(systemName: "star")
                    }
                }
            
            ProfileScreen()
                .tag(1)
                .tabItem {
                    VStack {
                        Text("Profile")
                        Image(systemName: "person")
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
