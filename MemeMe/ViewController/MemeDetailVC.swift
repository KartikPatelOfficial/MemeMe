//
//  MemeDetailVC.swift
//  MemeMe
//
//  Created by kartik patel on 07/04/18.
//  Copyright © 2018 kartik patel. All rights reserved.
//

import UIKit

class MemeDetailVC: UIViewController {

    @IBOutlet weak var imageDetail: UIImageView!
    
    var detailMeme : Meme! = nil
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        imageDetail.image = detailMeme.memedImage
        tabBarController?.tabBar.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let controller = segue.destination as! MemeEditorVC
        controller.defaultTopText = detailMeme.topText
        controller.defaultBottomText = detailMeme.bottomText
        controller.selectedImage = detailMeme.originalImage
        
        controller.cameFromDetail = true
        
    }

}
