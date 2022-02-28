//
//  ChartViewModel.swift
//  BarChartDemo
//
//  Created by Thongchai Subsaidee on 28/2/22.
//

import SwiftUI

class ChartViewModel: ObservableObject {
    
    @Published var charts = ChartModel.preview
    @Published var isAnimated: Bool = false

    func barChartHeight(value: CGFloat) -> CGFloat {
        let maxValue = ChartModel.preview.map((\.value)).max() ?? 0
        return value / maxValue
    }
    
}

