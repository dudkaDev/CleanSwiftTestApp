//
//  CourseListConfigurator.swift
//  CleanSwiftTestApp
//
//  Created by Андрей Абакумов on 20.02.2023.
//

import Foundation

final class CourseListConfigurator {
    static let shared = CourseListConfigurator()
    
    private init() {}
    
    func configure(with viewController: CourseListViewController) {
        let interactor = CourseListInteractor()
        let presenter = CourseListPresenter()
        let router = CourseListRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
}
