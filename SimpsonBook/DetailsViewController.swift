//
//  DetailsViewController.swift
//  SimpsonBook
//
//  Created by Mehmet Sukru Kavak on 11.03.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
   
    
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var selectedSimpson : Simpson?
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
    }
}
