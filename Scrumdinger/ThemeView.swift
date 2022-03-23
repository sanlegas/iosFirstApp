//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by ISAAC DAVID SANTIAGO on 15/03/22.
//

import Foundation

import SwiftUI

struct ThemeView: View {
    let theme: Theme
    
    var body: some View {
        ZStack {
                   RoundedRectangle(cornerRadius: 4)
                       .fill(theme.mainColor)
                   Label(theme.name, systemImage: "paintpalette")
                    .padding(4)

               }
        .foregroundColor(theme.accentColor)
        .fixedSize(horizontal: true, vertical: true)
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(theme: .buttercup)
    }
}
