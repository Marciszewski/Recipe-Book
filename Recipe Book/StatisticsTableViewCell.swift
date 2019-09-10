//
//  StatisticsTableViewCell.swift
//  Recipe Book
//
//  Created by Marek Marciszewski on 08/09/2019.
//  Copyright © 2019 Marek Marciszewski. All rights reserved.
//

import UIKit

class StatisticsTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var cocktailNameLabel: UILabel!
    @IBOutlet private weak var numberOfClicksLabel: UILabel!
    @IBOutlet private weak var cellBackgroundView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cellBackgroundView.layer.cornerRadius = 20
        cellBackgroundView.clipsToBounds = true

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }
    
    func update(array: [Int], index: Int) {
        
        numberOfClicksLabel.text = "\(array[index])"
        
    }
    
    func updateNames(array: [String], index: Int) {
        
        cocktailNameLabel.text = "\(array[index])"
        
    }
    
    func changeColorOfTheRowWhenMax() {
        cellBackgroundView.backgroundColor = .red
    }
    
    func changeColorToPrevious() {
        cellBackgroundView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.6)
    }
    
}
