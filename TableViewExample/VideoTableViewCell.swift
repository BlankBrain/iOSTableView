//
//  VideoTableViewCell.swift
//  TableViewExample
//
//  Created by Md. Mehedi Hasan on 1/1/20.
//  Copyright © 2020 Md. Mehedi Hasan. All rights reserved.
//

import UIKit

class VideoTableViewCell: UITableViewCell {
    @IBOutlet weak var videoImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    func setVideo( video : video){
        videoImage.image = video.image
        videoTitle.text = video.title
    }

}
