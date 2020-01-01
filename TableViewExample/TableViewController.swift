//
//  TableViewController.swift
//  TableViewExample
//
//  Created by Md. Mehedi Hasan on 1/1/20.
//  Copyright © 2020 Md. Mehedi Hasan. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    var videos: [video] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()
        // Do any additional setup after loading the view.
    }
    

  
    func createArray() -> [video] {
        var tempVideo: [video] = []
        let video1 = video( image : UIImage(named: "cat")! , title : " Cat meme 1" )
        let video2 = video( image : UIImage(named: "cat")! , title : " Cat meme 2" )
        let video3 = video( image : UIImage(named: "cat")! , title : " Cat meme 3" )
        let video4 = video( image : UIImage(named: "cat")! , title : " title 4" )
        let video5 = video( image : UIImage(named: "cat")! , title : " title 5" )
        let video6 = video( image : UIImage(named: "cat")! , title : " title 6" )

        tempVideo.append(video1)
        tempVideo.append(video2)
        tempVideo.append(video3)
        tempVideo.append(video4)
        tempVideo.append(video5)
        tempVideo.append(video6)
        
        return tempVideo
        
    }

}

extension TableViewController: UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "videoCell") as! VideoTableViewCell 
        cell.setVideo(video: video)
        return cell
        
    }
    
    
}
    

