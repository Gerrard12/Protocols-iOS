//
//  ColorsTableViewController.swift
//  ProtocolDemo
//
//  Created by gerardo on 14/03/18.
//  Copyright © 2018 Orbis. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {

    let colorsList = ["Rojo", "Amarillo", "Azul", "Verde"]
    weak var firstViewDelegate: FirstControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = colorsList[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        firstViewDelegate?.changeBackgraound(indexColor: indexPath.row)
        navigationController?.popViewController(animated: true) // para que vuelva a la vista anterior después de seleccionar alguna opción de nuestra lista
    }

}
