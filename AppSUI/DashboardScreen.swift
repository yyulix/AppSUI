//
//  DashboardScreen.swift
//  AppSUI
//
//  Created by Yulia Popova on 31.05.2023.
//

import SwiftUI

final class DashboardScreenVM: ObservableObject {
    @Published var title: String = "Dashboard"
    
    func changeTitle() {
        title = title == "Dashboard" ? "Main screen" : "Dashboard"
    }
}

struct DashboardScreen: View {
    @ObservedObject var viewModel: DashboardScreenVM = .init()
    
    var body: some View {
        VStack {
            Text("Dashboard")
                .font(.largeTitle)
            Button {
            } label: {
                Text("Change title")
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen()
    }
}
