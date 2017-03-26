//
//  AppDelegate.swift
//  Quote
//
//  Created by Matteo Manferdini on 31/07/15.
//  Copyright (c) 2015 Matteo Manferdini. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		if let quoteViewController = window?.rootViewController as? QuoteViewController {
			quoteViewController.modelController = ModelController()
		}
		return true
	}

}
