//
//  HelperMethods.swift
//  PinUnit
//
//  Created by Maksim Chizhavko on 2.12.20.
//

import UIKit

public struct Helpers {
    
    public static func executeRunLoop() {
        RunLoop.current.run(until: Date())
    }
    
    public static  func putViewInHierarchy(_ vc: UIViewController) {
        UIWindow().window?.addSubview(vc.view)
    }
}
