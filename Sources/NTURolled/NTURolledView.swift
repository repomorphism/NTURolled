//
//  NTURolledView.swift
//  NTURolled
//
//  Created by Paul Liu on 2025/3/20.
//

import SwiftUI

public struct NTURolledView: View {
    @Environment(\.openURL) private var openURL
    public var body: some View {
        HStack {
            letterN
            letterT
            letterU
        }
    }
}

extension NTURolledView {
    var letterN: some View {
        Text("N")
            .font(.system(size: 100))
            .fontWeight(.bold)
            .foregroundStyle(.cyan)
    }

    var letterT: some View {
        Text("T")
            .font(.system(size: 100))
            .fontWeight(.bold)
            .foregroundStyle(.orange)
    }

    var letterU: some View {
        Text("U")
            .font(.system(size: 100))
            .fontWeight(.bold)
            .foregroundStyle(.indigo)
            .gesture(
                TapGesture()
                    .onEnded({ _ in
                        openURL(URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ")!)
                    })
            )
    }
}

#Preview {
    NTURolledView()
}
