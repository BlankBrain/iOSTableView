//
//  TableViewCellDetailViewController.swift
//  TableViewExample
//
//  Created by Md. Mehedi Hasan on 2/1/20.
//  Copyright © 2020 Md. Mehedi Hasan. All rights reserved.
//

import UIKit

class TableViewCellDetailViewController: UIViewController {
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    var selectedVideo:video!

    override func viewDidLoad() {
        super.viewDidLoad()
        videoTitle.text = selectedVideo.title
        imageview.image = selectedVideo.image
        // Do any additional setup after loading the view.
    }
    


 
  
}
