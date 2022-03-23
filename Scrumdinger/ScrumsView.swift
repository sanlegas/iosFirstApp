//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by ISAAC DAVID SANTIAGO on 05/03/22.
//

import Foundation
import SwiftUI


struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]

    var body: some View {
        List {
            ForEach($scrums) { $scrum in
                            NavigationLink(destination: DetailView(scrum: $scrum)) {
                                CardView(scrum: scrum)
                                    
                            }.listRowBackground(scrum.theme.mainColor)
                        }
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                        Button(action: {}) {
                            Image(systemName: "plus")
                        }
                        .accessibilityLabel("New Scrum")
                    }
    }
}


struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumsView(scrums: .constant(DailyScrum.sampleData))
               }
    }
}
