//
//  ColorSlider.swift
//  PaletteSwift
//
//  Created by Kirill Korotaev on 24.01.2022.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var sliderValue: Double
    @State private var textValue = ""
    
    var color: Color
    
    var body: some View {
        HStack {
            SliderValueLabel(value: sliderValue)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .onChange(of: sliderValue) { value in
                    textValue = "\(lround(sliderValue))"
                }
            .accentColor(color)
            
            SliderValueTF(textValue: $textValue, value: $sliderValue)
        }
        .onAppear {
            textValue = "\(lround(sliderValue))"
        }
        .onTapGesture {
            UIApplication.shared.endEditing()
            sliderValue = Double(textValue) ?? 0
        }
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(sliderValue: .constant(100), color: .red)
    }
}
