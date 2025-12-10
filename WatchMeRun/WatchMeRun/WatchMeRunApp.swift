//
//  WatchMeRunApp.swift
//  WatchMeRun
//
//  Created by Christopher Korabik on 12/9/25.
//

import SwiftUI

@main
struct WatchMeRunApp: App {

    init() {
        configureAppearance()
    }

    var body: some Scene {
        WindowGroup {
            RootTabView()
                .tint(AppTheme.turquoise)
        }
    }

    // MARK: - Global Appearance

    private func configureAppearance() {
        // Tab Bar
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBarAppearance.backgroundColor = UIColor(AppTheme.chrome)

        tabBarAppearance.stackedLayoutAppearance.selected.iconColor = UIColor(AppTheme.turquoise)
        tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor: UIColor(AppTheme.turquoise)
        ]

        tabBarAppearance.stackedLayoutAppearance.normal.iconColor = UIColor.systemGray2
        tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor: UIColor.systemGray2
        ]

        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance

        // Navigation Bar
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground()
        navBarAppearance.backgroundColor = UIColor(AppTheme.chrome)
        navBarAppearance.titleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
        navBarAppearance.largeTitleTextAttributes = [
            .foregroundColor: UIColor.white
        ]

        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    }
}

