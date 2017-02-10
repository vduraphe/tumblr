//
//  PhotoDetailsViewController.swift
//  tumblrFeed
//
//  Created by Vaidehi Duraphe on 2/8/17.
//  Copyright © 2017 Vaidehi Duraphe. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var contentLabel: UILabel!
   
   
    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!

    public var imageURL: URL!
    public var quote: String!
    
    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //myImageView.setImageWith(imageUrl)
        // Do any additional setup after loading the view.
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: infoView.frame.origin.y + infoView.frame.size.height)
        contentLabel.text = quote
        let str = contentLabel.text?.replacingOccurrences(of: "[^>]+", with: "")
        print(str)
        contentLabel.sizeToFit()
        myImageView.setImageWith(imageURL!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
