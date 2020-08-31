//
//  ViewController.swift
//  DetectDonut
//
//  Created by Iresh Dudeja on 31/08/20.
//  Copyright © 2020 Iresh Dudeja. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }
    
    
    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let clickedImage = info[.originalImage] as? UIImage else {
            fatalError("Issue with the picked image.")
        }
        imageView.image = clickedImage
        imagePicker.dismiss(animated: true, completion: nil)
    }


}

