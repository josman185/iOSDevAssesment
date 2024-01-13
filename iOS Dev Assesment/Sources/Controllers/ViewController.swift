//
//  ViewController.swift
//  iOS Dev Assesment
//
//  Created by Jose Vargas on 1/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var productsTableView: UITableView!
    let viewModel = ProductViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadConfig()
        loadData()
    }

    private func loadConfig() {
        productsTableView.delegate = self
        productsTableView.dataSource = self
        
        productsTableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductTableViewCell")
    }
    
    private func loadData() {
        viewModel.getProducts {
            DispatchQueue.main.async {
                self.productsTableView.reloadData()
            }
        }
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.viewModel.products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell") as? ProductTableViewCell {
            cell.loadCellData(model: viewModel.products[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
}

