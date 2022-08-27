//
//  DetailViewController.swift
//  table view with data passing and delete
//
//  Created by Niraj on 24/08/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var dlbl1: UILabel!
    @IBOutlet weak var dlbl2: UILabel!
    @IBOutlet weak var dImg: UIImageView!
    
    var strlbl1: String!
    var strlbl2: String!
    var strimg: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dlbl1.text = strlbl1
        dlbl2.text = strlbl2
        dImg.image = strimg

    }
    
}
