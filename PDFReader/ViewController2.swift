//
//  ViewController2.swift
//  PDFReader
//
//  Created by Maiqui Cedeño on 1/04/20.
//  Copyright © 2020 PosetoStudio. All rights reserved.
//

import UIKit
import WebKit

class ViewController2: UIViewController {
    
    @IBOutlet var WebViewPDF: WKWebView!
    
    var namePDFRecieved:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(namePDFRecieved!)
        
        showPDF()
    }
    
    //Zoom is enable by default.
    func showPDF() {
        
        //PDF-file memory address
        let PDFMemoryAdress = URL(fileURLWithPath: Bundle.main.path(forResource: namePDFRecieved!, ofType: "pdf")!)
        
        //Transform PDF-file to Data
        let dataPDF = try? Data(contentsOf: PDFMemoryAdress)
        
        //Show data in WebView
        WebViewPDF.load(dataPDF!, mimeType: "application/pdf", characterEncodingName: "utf-8", baseURL: PDFMemoryAdress)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
