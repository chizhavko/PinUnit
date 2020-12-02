//
//  UIBarButton.swift
//  PinUnit
//
//  Created by Maksim Chizhavko on 2.12.20.
//

import UIKit

extension UIBarButtonItem {
    func tap(_ event: UIControl.Event = .touchUpInside) {
        _ = self.target?.perform(self.action, with: nil)
    }
}

