//
//  CourseListRouter.swift
//  CleanSwiftTestApp
//
//  Created by Андрей Абакумов on 16.02.2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol CourseListRoutingLogic {
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol CourseListDataPassing {
    var dataStore: CourseListDataStore? { get }
}

class CourseListRouter: NSObject, CourseListRoutingLogic, CourseListDataPassing {
    
    weak var viewController: CourseListViewController?
    var dataStore: CourseListDataStore?
    
    // MARK: Routing
    /*
    func routeToSomewhere(segue: UIStoryboardSegue?) {
        if let segue = segue {
            let destinationVC = segue.destination as! SomewhereViewController
            var destinationDS = destinationVC.router!.dataStore!
            passDataToSomewhere(source: dataStore!, destination: &destinationDS)
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
            var destinationDS = destinationVC.router!.dataStore!
            passDataToSomewhere(source: dataStore!, destination: &destinationDS)
            navigateToSomewhere(source: viewController!, destination: destinationVC)
        }
    }
    */
    
    // MARK: Navigation
    /*
    func navigateToSomewhere(source: CourseListViewController, destination: SomewhereViewController) {
        source.show(destination, sender: nil)
    }
    */
    
    // MARK: Passing data
    /*
    func passDataToSomewhere(source: CourseListDataStore, destination: inout SomewhereDataStore) {
        destination.name = source.name
    }
    */
}
