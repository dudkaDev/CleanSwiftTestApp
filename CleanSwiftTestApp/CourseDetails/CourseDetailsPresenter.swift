//
//  CourseDetailsPresenter.swift
//  CleanSwiftTestApp
//
//  Created by Андрей Абакумов on 16.02.2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//
import Foundation

protocol CourseDetailsPresentationLogic {
    func presentCourseDetails(response: CourseDetails.ShowDetails.Response)
    func presentFavoriteStatus(response: CourseDetails.SetFavoriteStatus.Response)
}

class CourseDetailsPresenter: CourseDetailsPresentationLogic {
    weak var viewController: CourseDetailsDisplayLogic?
    
    func presentCourseDetails(response: CourseDetails.ShowDetails.Response) {
        let numberOfLessons = "Number of lessons: \(response.numberOfLessons ?? 0)"
        let numberOfTests = "Number of tests: \(response.numberOfTests ?? 0)"
        
        let viewModel = CourseDetails.ShowDetails.ViewModel(
            courseName: response.courseName ?? "",
            numberOfLessons: numberOfLessons,
            numberOfTests: numberOfTests,
            imageData: response.imageData ?? Data(),
            isFavorite: response.isFavorite
        )
        viewController?.displayCourseDetails(viewModel: viewModel)
    }
    
    func presentFavoriteStatus(response: CourseDetails.SetFavoriteStatus.Response) {
        let viewModel = CourseDetails.SetFavoriteStatus.ViewModel(isFavorite: response.isFavorite)
        viewController?.displayFavoriteButtonStatus(viewModel: viewModel)
    }
}
