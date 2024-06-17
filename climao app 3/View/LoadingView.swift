//
//  LoadingView.swift
//  climao app 3
//
//  Created by stenio Lima on 17/06/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
                   .progressViewStyle(CircularProgressViewStyle(tint: .white))
                   .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    LoadingView()
}
