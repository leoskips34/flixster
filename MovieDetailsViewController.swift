//
//  MovieDetailsViewController.swift
//  flixster
//
//  Created by Leo Samuelson on 2/3/20.
//  Copyright © 2020 NDNU. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var backdropView: UIImageView!
    var movie: [String: Any]!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        //Do any additional setup after loading the view
        
        titleLabel.text = movie["title"] as? String
        synopsisLabel.text = movie["overview"] as? String
        let baseURL = "https://image.tmdb.org/t/p/w185"
              let postPath = movie["poster_path"] as! String
              let posterURL = URL(string: baseURL + postPath)!
              
            posterView.af_setImage(withURL: posterURL)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURL = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)!
          
       backdropView.af_setImage(withURL: backdropURL)
        
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
