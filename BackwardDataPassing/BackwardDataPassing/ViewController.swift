//
//  ViewController.swift
//  BackwardDataPassing
//
//  Created by Mac on 29/04/23.
//

import UIKit

class ViewController: UIViewController , BackDataPassingProtocol{

    @IBOutlet weak var nameLabel: UILabel!
    var secondViewController : SecondViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnMoveToSVC(_ sender: Any) {
        secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        secondViewController?.delegate = self
        navigationController?.pushViewController(secondViewController!, animated: true)
    }
    
    func passDataToFirstViewController(textToPass: String) {
        self.nameLabel.text = textToPass
    }
}

