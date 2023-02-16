//
//  CourseDetailsConfigurator.swift
//  CleanSwiftTestApp
//
//  Created by Андрей Абакумов on 16.02.2023.
//

import Foundation

final class CourseDetailsConfigurator {
    static let shared = CourseDetailsConfigurator()
    
    private init() {}
    
    func configure(with viewController: CourseDetailsViewController) {
        let interactor = CourseDetailsInteractor()
        let presenter = CourseDetailsPresenter()
        let router = CourseDetailsRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
}
