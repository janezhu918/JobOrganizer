//
//  ViewController+Alert.swift
//  JobOrganizer
//
//  Created by Jane Zhu on 2/25/19.
//  Copyright © 2019 JaneZhu. All rights reserved.
//

import UIKit

extension UIViewController {
    public func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    public func showDestructionAlert(title: String?, message: String?,
                                     style: UIAlertController.Style,
                                     handler: ((UIAlertAction) -> Void)?) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let okAction = UIAlertAction(title: "Cancel", style: .cancel)
        let customAction = UIAlertAction(title: "Confirm", style: .destructive, handler: handler)
        alertController.addAction(okAction)
        alertController.addAction(customAction)
        present(alertController, animated: true)
    }
    
    public func getTimestamp() -> String {
        let date = Date()
        let isoDateFormatter = ISO8601DateFormatter()
        isoDateFormatter.formatOptions = [.withFullDate,
                                          .withFullTime,
                                          .withInternetDateTime,
                                          .withTimeZone,
                                          .withDashSeparatorInDate]
        let timeStamp = isoDateFormatter.string(from: date)
        return timeStamp
    }
    
    public func getFormattedDate(date: String) -> String {
        let isoDateFormatter = ISO8601DateFormatter()
        var formattedDate = Date()
        if let date = isoDateFormatter.date(from: date) {
            formattedDate = date
        }
        return formattedDate.description
    }
}
