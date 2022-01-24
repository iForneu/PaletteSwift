//
//  SliderValueLabel.swift
//  PaletteSwift
//
//  Created by Kirill Korotaev on 24.01.2022.
//

import SwiftUI

struct SliderValueLabel: View {
    
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 35, alignment: .leading)
            .foregroundColor(.white)
    }
}

struct SliderValueLabуle_Previews: PreviewProvider {
    static var previews: some View {
        SliderValueLabel(value: 128)
    }
}
