//
//  PhotoViewController.swift
//  Photo Tapps
//
//  Created by Nataliia on 17.08.2020.
//  Copyright © 2020 Natalia. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
           super.viewDidLoad()

           photoImageView.image = image
       }
       
    @IBAction func shareAction(_ sender: Any) {
    let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
    
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Успешно!")
            }
        }
        
        present(shareController, animated: true, completion: nil)
    
    
    
    }
}
