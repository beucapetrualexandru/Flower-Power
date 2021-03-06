//
//  FlowersViewController.swift
//  Flower Power
//
//  Created by Beuca Alexandru on 10.07.2021.
//

import UIKit

class FlowersViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var parse = ViewModel()
    var k = Constants()
    override func viewDidLoad() {
        super.viewDidLoad()
        parse.downloadJSON {
            data in
            self.parse.flower = data
            self.tableView.reloadData()
        }
        tableView.register(CustomViewCell.nib(), forCellReuseIdentifier: CustomViewCell.cellIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        
    }
}
//MARK: - Table View

extension FlowersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return parse.flower.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomViewCell.cellIdentifier, for: indexPath) as! CustomViewCell
        let model = parse.flower[indexPath.row]
        cell.ordersLabel.text = "\(model.id)"
        cell.nameLabel.text = model.description
        cell.priceLabel.text = "\(model.price) lei"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier:k.flowersToView , sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailsViewController
        {
            destination.details = parse.flower[tableView.indexPathForSelectedRow!.row]
        }
    }
    
    
}
