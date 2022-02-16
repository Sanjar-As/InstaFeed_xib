//
//  PostTableViewCell.swift
//  InstaSign
//
//  Created by Sanjar Aslonov on 15/02/22.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var fullnameLabel: UILabel!
    @IBOutlet var postImageView1: UIImageView!
    @IBOutlet var postImageView2: UIImageView!
    @IBOutlet var pressedLike: UILabel!
    @IBOutlet var briefDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
