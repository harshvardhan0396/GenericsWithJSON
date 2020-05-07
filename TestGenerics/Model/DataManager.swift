//
//  DataManager.swift
//  TestGenerics
//
//  Created by Harshvardhan Patidar on 07/05/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import Foundation


struct GetDataFromAPI{

    func getAllData<T:Decodable>(requestUrl: URL, resultType: T.Type, completionHandler: @escaping(_ result: T) -> Void){
        URLSession.shared.dataTask(with: requestUrl) { (data, response, error) in

            if(error == nil && data != nil && data?.count != 0){
                let decoder = JSONDecoder()
                do{
                    let result = try decoder.decode(T.self, from: data!)
                    _ = completionHandler(result)
                }
                catch let error{
                    print(error)
                }
            }
        }.resume()
    }
}
