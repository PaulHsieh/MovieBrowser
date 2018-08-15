//
//  MovieDetailApiModel.swift
//  MovieBrowser
//
//  Created by Paul Hsieh on 2018/8/15.
//  Copyright © 2018年 PaulHsieh. All rights reserved.
//

import Foundation

func MovieDetailApiFeed(apiKey:String) -> [String:AnyObject] {
    return ["api_key": apiKey, "language":Constant.languageCode] as [String:AnyObject]
}

struct MovieDetailResponseModel {    
    var releaseDate: String
    var originalTitle: String
    var title: String
    var runtime: Int
    var spokenLanguages: [[String:AnyObject]]
    var originalLanguage: String
    var status: String
    var posterPath: String
    var genres: [String]
    
    init(feed: [String:AnyObject]) {
        self.releaseDate = feed["release_date"] as? String ?? ""
        self.originalTitle = feed["original_title"] as? String ?? ""
        self.title = feed["title"] as? String ?? ""
        self.runtime = feed["runtime"] as? Int ?? 0
        self.spokenLanguages = feed["spoken_languages"] as? [[String:AnyObject]] ?? [[String:AnyObject]]()
        self.originalLanguage = feed["original_language"] as? String ?? ""
        self.status = feed["status"] as? String ?? ""
        self.posterPath = feed["poster_path"] as? String ?? ""
        self.genres = feed["genres"] as? [String] ?? []
    }
}

struct MovieDetailHeaderViewModel {
    var title: String
    var originalTitle: String
    var releaseDate: String
    var runtime: Int
    var posterPath: String
    
    init(title: String, originalTitle: String, releaseDate :String, runtime: Int, posterPath: String) {
        self.title = title
        self.originalTitle = originalTitle
        self.releaseDate = releaseDate
        self.runtime = runtime
        self.posterPath = posterPath
    }
}

struct MoviewDetailDescriptionViewModel {
    var genres: [String]
    var language: String
    var date: String
    var runtime: Int
    var status: String
    
    init(genres: [String], language: String, date: String, runtime: Int, status: String!) {
        self.genres = genres
        self.language = language
        self.date = date
        self.runtime = runtime
        self.status = status
    }
}
