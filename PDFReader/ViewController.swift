//
//  ViewController.swift
//  PDFReader
//
//  Created by Maiqui Cedeño on 31/03/20.
//  Copyright © 2020 PosetoStudio. All rights reserved.
//

import UIKit


//UITableViewDelegate, UITableViewDataSource are protocols to manage tables.
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   var cellContents = ["DesarrolloVideojuegos1", "DesarrolloVideojuegos2", "DesarrolloVideojuegos3", "DesarrolloVideojuegos4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       return cellContents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = cellContents[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let idPDFSelected = indexPath.row
        self.performSegue(withIdentifier: "SegueScreen2", sender: idPDFSelected)
    }
    
    //sender indicates the number of PDFs that were   clicked
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
        if (segue.identifier == "SegueScreen2") {
            
            let idPDFSelectedReceived = sender as! Int
            
            //Instance of ViewController2
            let screen2:ViewController2 = segue.destination as! ViewController2
            screen2.namePDFRecieved = cellContents[idPDFSelectedReceived]
            
            
        }
    }
}

