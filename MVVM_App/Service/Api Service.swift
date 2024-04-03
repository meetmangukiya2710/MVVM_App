//
//  Api Service.swift
//  MVVM_App
//
//  Created by R95 on 29/03/24.
//

import Foundation

//class ApigetData {
//    
//    let link = "https://jsonplaceholder.typicode.com/posts"
//    
//    func apigetData() {
//        let urlRequest = URLRequest(url: URL(string: link)!)
//        
//        URLSession.shared.dataTask(with: urlRequest) { data, respo, error in
//            do {
//                if(data != nil) {
//                    let jsonDecoder = JSONDecoder()
//                    
//                    let data = try jsonDecoder.decode([apiModel].self, from: data!)
//                    print(data)
//                }
//                else {
//                    print(error?.localizedDescription)
//                }
//            }
//            catch {
//                print(error.localizedDescription)
//            }
//        }.resume()
//    }
//}

class ConutryApi {
    
    func conutryApiCalling(country: String,_ loaded: @escaping(_ news: NewsModel?) -> Void) {
        let urlLink = "https://newsapi.org/v2/top-headlines?country=\(country)&category=business&apiKey=517dee2e1bd54dac997c0fee78bee411"
        var urlRequest = URLRequest(url: URL(string: urlLink)!)
        urlRequest.httpMethod = "GET"

        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            do {
                if(data != nil) {
                    let newsModel = try JSONDecoder().decode(NewsModel.self, from: data!)
//                    print(newsModel)
                    loaded(newsModel)
                } else {
                    print("No data received")
                }
            } catch {
                print("Error decoding JSON: \(error.localizedDescription)")
            }
        }.resume()
    }
}
