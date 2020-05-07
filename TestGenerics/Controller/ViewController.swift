//
//  ViewController.swift
//  TestGenerics
//
//  Created by Harshvardhan Patidar on 07/05/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var rootAPI = RootAPI()
    var getData = GetDataFromAPI()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.gettingData()
    }
}

extension ViewController{
    func gettingData(){
        getData.getAllData(requestUrl: URL(string: rootAPI.baseURL + "/employee")!, resultType: EmployeeData.self){(employeeResponse) in
                print(employeeResponse.employeeName)
        }


        getData.getAllData(requestUrl: URL(string: rootAPI.baseURL + "/leaves")!, resultType: LeavesCount.self){(leavesResponse) in
            print(leavesResponse.cl)
            print(leavesResponse.sl)
            print(leavesResponse.pl)
        }

        getData.getAllData(requestUrl: URL(string: rootAPI.baseURL + "/leaves/pl/pending/1")!, resultType: [Leave].self){
            (leavesBaseResponse) in
            for arr in leavesBaseResponse{
                print(arr.image)
                print(arr.subject)
                print(arr.date)
            }
        }

    }
    
}
    


