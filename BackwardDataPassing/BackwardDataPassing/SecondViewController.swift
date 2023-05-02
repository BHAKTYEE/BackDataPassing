//
//  SecondViewController.swift
//  BackwardDataPassing
//
//  Created by Mac on 29/04/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var nameTExtField: UITextField!
    
    var delegate : BackDataPassingProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func btnBackClick(_ sender: Any) {
    guard let delegateSVC = delegate else{
        return
    }
    var  extractedName = self.nameTExtField.text
    
    delegateSVC.passDataToFirstViewController(textToPass: extractedName ?? "Bhakti")
    navigationController?.popViewController(animated: true)
}
}
