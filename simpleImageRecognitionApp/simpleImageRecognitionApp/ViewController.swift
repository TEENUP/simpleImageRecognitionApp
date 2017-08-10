//
//  ViewController.swift
//  simpleImageRecognitionApp
//
//  Created by Puneet on 09/08/17.
//  Copyright © 2017 PuneetGupta. All rights reserved.
//

import UIKit
import Ma

class ViewController: UIViewController, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var classifierLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func camera(_ sender: Any) {
        
        if !UIImagePickerController.isSourceTypeAvailable(.camera) {
            return
        }
        
        let cameraPicker = UIImagePickerController()
        cameraPicker.sourceType = .camera
        cameraPicker.allowsEditing = false
        cameraPicker.delegate = self
        
        present(cameraPicker, animated: true)
    }
    
    @IBAction func openLibrary(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.allowsEditing = false
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true )
    }

}

extension ViewController: UIImagePickerControllerDelegate {
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}
