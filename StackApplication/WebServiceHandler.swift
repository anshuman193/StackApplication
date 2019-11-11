//
//  WebServiceHandler.swift
//  StackApplication
//
//  Created by Anshuman Singh on 11/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

class WebServiceHandler: NSObject {

    private func setup() {
        
        let headers = [
            "x-rapidapi-host": "apidojo-yahoo-finance-v1.p.rapidapi.com",
            "x-rapidapi-key": "67c8dab948mshf8b789dfe797ce8p16c741jsn7af0f3e49b8f"
            ]
    
    }
    
    private func prepareRequest(source: String) -> URL? {
          
          guard let url = URL(string: source) else { return nil }
          return url
          
      }
    
    func fetchData() {
        
        
//        guard let url = weakSelf.prepareRequest(source: dataSrc) else {
//            
//            Logger.debugLog(Constants.ErrorMessage.badURL)
//            return
//        }

        
        
        let headers = [
            "x-rapidapi-host": "apidojo-yahoo-finance-v1.p.rapidapi.com",
            "x-rapidapi-key": "67c8dab948mshf8b789dfe797ce8p16c741jsn7af0f3e49b8f"
        ]

        
        let request = NSMutableURLRequest(url: NSURL(string: "https://apidojo-yahoo-finance-v1.p.rapidapi.com/market/get-movers?count=4&region=US&lang=en")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse)
            }
        })

        dataTask.resume()
        
    }
}
