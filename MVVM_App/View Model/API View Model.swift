//
//  API View Model.swift
//  MVVM_App
//
//  Created by R95 on 29/03/24.
//

import Foundation

//class APIViewModel : NSObject {
//
//    var apiService : ApigetData!
//
//    override init() {
//        super.init()
//        apiService = ApigetData()
//        apiCallingFunc()
//    }
//
//    func apiCallingFunc() {
//        self.apiService.apigetData()
//    }
//}

class NewsModelAPI : NSObject {
    var newsModel: ConutryApi = ConutryApi()
    
//    override init() {
//        super.init()
//        apiCalling(country: "IN"){news in }
//    }
    
    func apiCalling(country: String,_ loaded: @escaping(_ news: NewsModel?) -> Void) {
        newsModel.conutryApiCalling(country: country) { news in
            loaded(news)
        }
    }
}
