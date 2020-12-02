//
//  ViewControllerPresentation.swift
//  PinUnit
//
//  Created by Maksim Chizhavko on 2.12.20.
//

import UIKit

public protocol VCValidateProtocol {
    associatedtype Controller
    func isRootViewController(_ controller: Controller) -> Bool
    func hasPresentedController(_ controller: Controller) -> Bool
    func isPresented(of controller: Controller) -> Bool
    func isPushed(of controller: Controller) -> Bool
    func presentedController(from controller: Controller) -> Controller
    func previousController(for controller: Controller) -> Controller
}

public class VCValidate: VCValidateProtocol {
    
    public typealias Controller = UIViewController
    
    public init() {}
    
    public func isRootViewController(_ controller: Controller) -> Bool {
        return UIApplication.shared.windows.first?.rootViewController == controller
    }
    
    public func hasPresentedController(_ controller: Controller) -> Bool {
        return !controller.children.isEmpty || controller.presentedViewController != nil
    }
    
    public func isPresented(of controller: Controller) -> Bool {
        return (controller.parent?.children.isEmpty ?? true)
    }
    
    public func isPushed(of controller: Controller) -> Bool {
        return !(controller.parent?.children.isEmpty ?? true)
    }
    
    public func presentedController(from controller: Controller) -> Controller {
        if let child = isChild(controller) {
            return presentedController(from: child)
        } else if let presented =  isPresented(controller) {
            return presentedController(from: presented)
        } else {
            return controller
        }
    }
    
    public func previousController(for controller: Controller) -> Controller {
        let lastController = presentedController(from: controller)
        if let parent = lastController.parent {
            if parent.children.count > 1 {
                return parent.children[parent.children.count - 2]
            } else {
                return presentingController(from: parent)
            }
        } else {
            return presentingController(from: lastController)
        }
    }
    
    private func presentingController(from controller: Controller) -> Controller {
        if let parent = controller.presentingViewController {
            return parent
        } else {
            return controller
        }
    }
    
    private func isChild(_ object: Controller) -> Controller? {
        guard let object = object.children.last else { return nil }
        return object
    }
    
    private func isPresented(_ object: Controller) -> Controller? {
        guard let object = object.presentedViewController else { return nil }
        return object
    }
}
