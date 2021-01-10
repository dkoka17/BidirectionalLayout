//
//  ViewController.swift
//  Bidirectional
//
//  Created by dato on 1/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.frame = tableView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
        
        tableView.register(UINib(nibName: "RedCell", bundle: nil), forCellReuseIdentifier: "RedCell")
        
        tableView.register(UINib(nibName: "BlueCell", bundle: nil), forCellReuseIdentifier: "BlueCell")
        
        tableView.register(UINib(nibName: "ColelctionCelll", bundle: nil), forCellReuseIdentifier: "ColelctionCelll")
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            return tableView.dequeueReusableCell(withIdentifier: "BlueCell", for: indexPath)
        } else if indexPath.row == 2 {
            return tableView.dequeueReusableCell(withIdentifier: "ColelctionCelll", for: indexPath)
        }else {
            return tableView.dequeueReusableCell(withIdentifier: "RedCell", for: indexPath)
        
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 150
        } else if indexPath.row == 2 {
            return 200
        }else {
            return 100
        
        }
    }
    
    
    
}
