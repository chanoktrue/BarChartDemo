//
//  ContentView.swift
//  BarChartDemo
//
//  Created by Thongchai Subsaidee on 28/2/22.
//

//https://youtu.be/Gzrs53oEdyk

import SwiftUI

struct ContentView: View {
    
    @StateObject var chartVM = ChartViewModel()
    
    var body: some View {
        ChartView(chartVM: chartVM)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ChartView: View {
    @ObservedObject var chartVM: ChartViewModel
    var body: some View {
        GeometryReader { geo in
            ScrollView(.horizontal) {
                HStack(alignment: .bottom) {
                    ForEach(chartVM.charts) { chart in
                        VStack {
                            RoundedRectangle(cornerRadius: 4)
                                .frame(width: 50, height: chartVM.isAnimated ? (geo.size.height - 16)  * chartVM.barChartHeight(value: chart.value) : 0)
                                .animation(.spring(), value: chartVM.isAnimated)
                            Text(chart.title)
                        }
                    }
                }
            }
            .padding(.horizontal)
            .onAppear {
                chartVM.isAnimated = true
            }
        }
    }
}

