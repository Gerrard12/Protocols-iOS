//
//  ViewController.swift
//  ProtocolDemo
//
//  Created by gerardo on 14/03/18.
//  Copyright © 2018 Orbis. All rights reserved.
//

import UIKit

protocol FirstControllerDelegate: class {
    func changeBackgraound(indexColor: Int)
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func goColorsTable(_ sender: Any) {
        performSegue(withIdentifier: "goSelectColor", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goSelectColor" {
            guard let controller = segue.destination as? ColorsTableViewController else {
                return
            }
            //Establecemos "los permisos mediante el self"
            controller.firstViewDelegate = self
        }
    }
}

extension ViewController: FirstControllerDelegate {
    func changeBackgraound(indexColor: Int) {
        switch indexColor {
        case 0:
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        case 1:
            self.view.backgroundColor = #colorLiteral(red: 0.9368221164, green: 0.9953032136, blue: 0, alpha: 1)
        case 2:
            self.view.backgroundColor = #colorLiteral(red: 0.05784124881, green: 0.03156668693, blue: 0.9577758908, alpha: 1)
        case 3:
            self.view.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        default:
            self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
