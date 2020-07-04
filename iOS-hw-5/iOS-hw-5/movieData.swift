//
//  movieData.swift
//  iOS-hw-5
//
//  Created by Abdullah Almunaikh on 7/4/20.
//  Copyright © 2020 Abdullah. All rights reserved.
//

import Foundation

class moviesModel {
    var movieName: String = ""
    var movieReleaseDate: Int
    var actors: [String]
    var rating: Double
    var rated: String

    init(name: String, release: Int, actors: [String], rating: Double, rated: String) {
        self.movieName = name
        self.movieReleaseDate = release
        self.actors = actors
        self.rating = rating
        self.rated = rated
    }
    
    
}



// املأ  المصففة  الموجودة  في ملف  MovieDataModel بكوائن من  أفلامك المفضلة
//أو ازل الـComment عن المصفوقة التالية


var MoviesData = [
    moviesModel(name: "Avengers Endgame", release: 2019, actors: ["Robert Downey", "Chris Evans", "Chris Hemsworth"], rating: 8.4, rated: "PG-13"),
    
    moviesModel(name: "Thor- Ragnarok", release: 2017, actors: ["Chris Hemsworth", "Tom Hiddleston", "Mark Ruffalo"], rating: 7.9, rated: "PG-13"),
    
    moviesModel(name: "Back to the Future", release: 1985, actors: ["Michael J. Fox", "Christopher Lloyd", "Lea Thompson"], rating: 8.5, rated: "PG"),
    
    moviesModel(name: "The Meg", release: 2018, actors: ["Rainn Wilson", "Bingbing Li","Jason Statham"], rating: 5.7, rated: "PG-13"),
    
    moviesModel(name: "1917", release: 2019, actors: ["Charles Chapman","George MacKay","Daniel Mays"], rating: 8.3, rated: "R"),
    
    moviesModel(name: "Spider-Man", release: 2019, actors: ["Tom Holland", "Jake Gyllenhaal","Samuel L. Jackson"], rating: 7.5, rated: "PG-13")
]
