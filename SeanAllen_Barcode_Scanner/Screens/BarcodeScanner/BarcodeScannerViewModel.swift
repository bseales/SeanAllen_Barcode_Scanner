//
//  BarcodeScannerViewModel.swift
//  SeanAllen_Barcode_Scanner
//
//  Created by Batson Seales on 6/12/23.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedBarcode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedBarcode.isEmpty ? "Not yet scanned" : scannedBarcode
    }
    
    var statusTextColor: Color {
        scannedBarcode.isEmpty ? .red : .green
    }
}
