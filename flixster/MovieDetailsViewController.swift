//
//  MovieDetailsViewController.swift
//  flixster
//
//  Created by Leo Samuelson on 2/5/20.
//  Copyright © 2020 NDNU. All rights reserved.
//

import UIKit

class MovieDetailsViewController: UIViewController {

    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(movie["title"])
    }
    

    

}
