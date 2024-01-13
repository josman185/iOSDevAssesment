//
//  ProductTableViewCell.swift
//  iOS Dev Assesment
//
//  Created by Jose Vargas on 1/12/24.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblProductName: UILabel!
    @IBOutlet weak var lblProductPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func loadCellData(model: Product) {
        lblProductName.text = model.title
        lblProductPrice.text = "$ \(model.price)"
    }
    
}
