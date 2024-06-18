//
//  NotificationViewController.swift
//  UIApp
//
//  Created by webcodegenie on 17/06/24.
//

import UIKit

class NotificationViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    

    @IBOutlet weak var NotificationTableView: UITableView!
    
    
    var notifications = [
        "Jon smith added your product to cart",
        "Will smith added your product to cart",
        "Steven smith added your product to cart",
        "Black smith added your product to cart",
        "Alexander smith added your product to cart",
        "Tim smith added your product to cart",
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationTableView.delegate = self
        NotificationTableView.dataSource = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notifications.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = notifications[indexPath.row]
        cell.textLabel?.textAlignment = .center
        
        return cell
    }
    
    
    @IBAction func actionClose(_ sender: Any) {
        self.dismiss(animated: true)
    }
    

}
