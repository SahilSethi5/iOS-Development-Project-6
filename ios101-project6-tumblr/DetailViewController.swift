//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Sahil Sethi on 10/27/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var TextUILabel: UITextView!
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let post = post else {

            return
        }

        Nuke.loadImage(with: post.photos[0].originalSize.url, into: ImageView)

        TextUILabel.text = post.caption.trimHTMLTags()

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
