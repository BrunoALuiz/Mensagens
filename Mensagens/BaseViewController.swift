//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Bruno Luiz on 16/06/19.
//  Copyright © 2019 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    @IBOutlet weak var lbMessage: UILabel!
    var message: Message!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeColor(_ sender: UIButton) {
        if let reference = self as? ColorPickerDelegate {
            let colorPicket = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
            colorPicket.modalPresentationStyle = .overCurrentContext
            colorPicket.delegate = reference
            present(colorPicket, animated: true, completion: nil)
        }
    }
    
    
}
