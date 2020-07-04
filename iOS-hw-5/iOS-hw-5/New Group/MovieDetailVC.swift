//
//  MovieDetailVC.swift
//  iOS-hw-5
//
//  Created by Abdullah Almunaikh on 7/4/20.
//  Copyright © 2020 Abdullah. All rights reserved.
//

import UIKit
import AVFoundation

class MovieDetailVC: UIViewController {
    
    var movieData: moviesModel!
    var MovieSound: AVAudioPlayer?



    @IBOutlet weak var mImage: UIImageView!
    
    @IBOutlet weak var movieName: UINavigationItem!
    
    
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieRated: UILabel!
    @IBOutlet weak var movieReleaseDate: UILabel!
    
    
    @IBOutlet weak var actorImg1: UIImageView!
    @IBOutlet weak var actorName1: UILabel!
    @IBOutlet weak var actorImg2: UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    @IBOutlet weak var actorImg3: UIImageView!
    @IBOutlet weak var actorName3: UILabel!

    @IBOutlet weak var ratingBG: UIView!

    
    @IBOutlet weak var ratedBG: UIView!

    
    @IBOutlet weak var yearBG: UIView!

    @IBOutlet weak var iconBG: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        setMovieDetails()
        playMusic()
    }
    
    func setMovieDetails(){
        movieName.title = movieData.movieName
        self.mImage.image = UIImage(named: movieData.movieName)
        self.movieRated.text = movieData.rated
        self.movieRating.text = String(movieData.rating)

        self.movieReleaseDate.text = String(movieData.movieReleaseDate)

        self.actorImg1.image = UIImage(named: movieData.actors[0])
        self.actorName1.text = movieData.actors[0]
        self.actorImg2.image = UIImage(named: movieData.actors[1])
        self.actorName2.text = movieData.actors[1]

        self.actorImg3.image = UIImage(named: movieData.actors[2])
        self.actorName3.text = movieData.actors[2]

    }
    
    func configureUI(){
        ratedBG.layer.cornerRadius = 20
        ratingBG.layer.cornerRadius = 20
        yearBG.layer.cornerRadius = 20
        iconBG.layer.cornerRadius = 20
    }
    func musicName() -> String {
        return movieData.movieName + ".m4a"
    }
    func playMusic() {
        let path = Bundle.main.path(forResource: musicName(), ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            MovieSound = try AVAudioPlayer(contentsOf: url)
            MovieSound?.play()
        } catch {
            // couldn't load file :(
        }
    }
    
    
    
}


