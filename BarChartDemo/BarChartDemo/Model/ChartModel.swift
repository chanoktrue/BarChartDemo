//
//  ChartModel.swift
//  BarChartDemo
//
//  Created by Thongchai Subsaidee on 28/2/22.
//

import Foundation

struct ChartModel: Identifiable {
    let id = UUID()
    let value: Double
    let title: String
    
    static let preview: [ChartModel] = [
        ChartModel(value: 0.2, title: "First"),
        ChartModel(value: 0.7, title: "Second"),
        ChartModel(value: 0.5, title: "Third"),
        ChartModel(value: 0.3, title: "First"),
        ChartModel(value: 0.8, title: "Second"),
        ChartModel(value: 1.0, title: "Third"),
        ChartModel(value: 0.2, title: "First"),
        ChartModel(value: 0.7, title: "Second"),
        ChartModel(value: 0.5, title: "Third"),
        ChartModel(value: 0.3, title: "First"),
        ChartModel(value: 0.8, title: "Second"),
        ChartModel(value: 1.0, title: "Third")
    ]
}
