//
//  ContentView.swift
//  BarChart
//
//  Created by Sandra Gomez on 4/8/24.
//

import Charts
import SwiftUI

struct SalesPeople: Identifiable {
    var name: String
    var sales: Int
    var id: String { name }
}

var mySalesArray: [SalesPeople] = [
    .init(name: "Oscar", sales: 50),
    .init(name: "Mayer", sales: 43),
    .init(name: "George", sales: 62),
    .init(name: "Hormel", sales: 26)
]

struct ContentView: View {
    var body: some View {
        Chart (mySalesArray){ z in
            BarMark(x: .value("Name", z.name),
                    y: .value("Sales", z.sales))
        }
        
    }
}


#Preview {
    ContentView()
}
