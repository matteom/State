//
//  ViewController.swift
//  Quote
//
//  Created by Matteo Manferdini on 31/07/15.
//  Copyright (c) 2015 Matteo Manferdini. All rights reserved.
//

import UIKit

class QuoteViewController: UIViewController {
	@IBOutlet weak var quoteTextLabel: UILabel!
	@IBOutlet weak var quoteAuthorLabel: UILabel!
	
	var modelController: ModelController!
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		let quote = modelController.quote
		quoteTextLabel.text = quote.text
		quoteAuthorLabel.text = quote.author
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let editViewController = segue.destination as? EditViewController {
			editViewController.modelController = modelController
		}
	}
}
