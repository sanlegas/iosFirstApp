//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by ISAAC DAVID SANTIAGO on 01/03/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            NavigationView {
                            ScrumsView(scrums: $scrums)
                        }
        }
    }
}
