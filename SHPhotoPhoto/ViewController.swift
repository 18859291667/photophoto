//
//  ViewController.swift
//  SHPhotoPhoto
//
//  Created by shark on 2021/3/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        var config = YPImagePickerConfiguration()
        config.library.maxNumberOfItems = 3
        let picker = YPImagePicker(configuration: config)
        
        self.present(picker, animated: true, completion: nil)
        
        
        picker.didFinishPicking { [unowned picker] items, cancelled in
            for item in items {
                switch item {
                case .photo(let photo):
                    print(photo)
                case .video(let video):
                    print(video)
                }
            }
            picker.dismiss(animated: true, completion: nil)
        }
        
    }

}

