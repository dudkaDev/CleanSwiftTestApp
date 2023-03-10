//
//  CourseListInteractor.swift
//  CleanSwiftTestApp
//
//  Created by Андрей Абакумов on 16.02.2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

protocol CourseListBusinessLogic {
    func fetchCourses()
}

protocol CourseListDataStore {
    var courses: [Course] { get }
}

class CourseListInteractor: CourseListBusinessLogic, CourseListDataStore {
    
    var presenter: CourseListPresentationLogic?
    var courses: [Course] = []
    
    func fetchCourses() {
        NetworkManager.shared.fetchData { [weak self] courses in
            self?.courses = courses
            let response = CourseList.ShowCourses.Response(courses: courses)
            self?.presenter?.presentCourses(response: response)
        }
    }
}
