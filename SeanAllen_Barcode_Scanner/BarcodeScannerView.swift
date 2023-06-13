//
//  ContentView.swift
//  SeanAllen_Barcode_Scanner
//
//  Created by Batson Seales on 6/11/23.
//

import SwiftUI

struct BarcodeScannerView: View {
    @State private var scannedBarcode = ""
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedBarcode: $scannedBarcode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(scannedBarcode.isEmpty ? "Not yet scanned" : scannedBarcode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(scannedBarcode.isEmpty ? .red : .green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
