//
//  CourseListPresenter.swift
//  CleanSwiftTestApp
//
//  Created by Андрей Абакумов on 16.02.2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

protocol CourseListPresentationLogic {
    func presentSomething(response: CourseList.Something.Response)
}

class CourseListPresenter: CourseListPresentationLogic {
    
    weak var viewController: CourseListDisplayLogic?
    
    func presentSomething(response: CourseList.Something.Response) {
        let viewModel = CourseList.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}