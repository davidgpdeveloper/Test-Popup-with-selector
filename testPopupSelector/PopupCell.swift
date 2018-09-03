//
//  PopupCell.swift
//  testPopupSelector
//
//  Created by Studiogenesis Home on 3/9/18.
//  Copyright © 2018 Studiogenesis Home. All rights reserved.
//

import UIKit

protocol PopupCellDelegate {
    func sendName(value: String)
    
}

class PopupCell: UITableViewCell {
    
    @IBOutlet weak var buttonSelected: UIButton!
    @IBOutlet weak var labelText: UILabel!
    @IBAction func buttonSelectedAction(_ sender: UIButton) {actionButtonSelected()}
    
    var delegate: PopupCellDelegate?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        buttonSelected.setTitle(" ", for: UIControlState())
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func actionButtonSelected() {
        print("action button selected")
        
        if let name = buttonSelected.titleLabel?.text {
            print("name \(name)")
            delegate?.sendName(value: name)
        }
        
        if buttonSelected.titleLabel?.text == " " {
            print("empty")
            buttonSelected.setTitle("X", for: UIControlState())
        } else {
            print("X")
            buttonSelected.setTitle("", for: UIControlState())
        }
        
    }

}
