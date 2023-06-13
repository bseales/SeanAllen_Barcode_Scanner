//
//  ScannerView.swift
//  SeanAllen_Barcode_Scanner
//
//  Created by Batson Seales on 6/11/23.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    @Binding var scannedBarcode: String
    
    func makeUIViewController(context: Context) -> ScannerViewController {
        ScannerViewController(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerViewController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView: self)
    }
    
    final class Coordinator: NSObject, ScannerViewControllerDelegate {
        private let scannerView: ScannerView
        
        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }
        
        func didFind(barcode: String) {
            scannerView.scannedBarcode = barcode
        }
        
        func didSurface(error: CameraError) {
            print(error.rawValue)
        }
        
        
    }
}

struct ScannerView_Previews: PreviewProvider {
    static var previews: some View {
        ScannerView(scannedBarcode: .constant(""))
    }
}
