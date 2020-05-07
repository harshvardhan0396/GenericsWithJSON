//
//  DataModel.swift
//  TestGenerics
//
//  Created by Harshvardhan Patidar on 07/05/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import Foundation

//baseURL + /employee
struct EmployeeData: Decodable{
    var employeeName: String
    var employeeId: Int
    var employeeNumber: Int
    var employeeEmail: String
}

//baseURL + /leaves
struct LeavesCount: Decodable{
    var sl: Int
    var cl: Int
    var pl: Int
}

//baseURL + /leaves/pl/pending/1
//baseURL + /leaves/pl/rejected/1
//baseURL + /leaves/pl/aproved/1
struct LeavesBase: Decodable{
    var Leaves: [Leave]
}

struct Leave: Decodable{
    var image: String
    var subject: String
    var date: String
}



//baseURL + /tasks
struct TaskBase: Decodable{
    var TasksData: [Tasks]
}

struct Tasks: Decodable{
    var Image : String
    var Subject : String
    var RequestedBy : String
    var RequestedOn : String
}

//baseURL + /tasks/harsh
//struct CheckTasks: Decodable{
    
//}
//baseURL + /attendance/4
struct Attendnace: Decodable{
    var Present: Int
    var Absent: Int
}

//baseURL + /attendanceSummary/4
struct AttendanceSummary: Decodable{
    var MonthName: String
    var Total: Int
    var Present: Int
    var Absent: Int
    var Holidays: Int
    var Data: [AttendanceData]
}

struct AttendanceData: Decodable{
    var AttendanceType: String
    var Image: String
    var Date: String
    var Time: String
}

//baseURL + /holiday/4
struct Holiday: Decodable{
    var Date: String
    var FestivalName: String
    var Day: String
}
