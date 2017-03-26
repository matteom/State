//
//  EditViewController.swift
//  Quote
//
//  Created by Matteo Manferdini on 04/08/15.
//  Copyright (c) 2015 Matteo Manferdini. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
	@IBOutlet weak var textView: UITextView!
	@IBOutlet weak var textField: UITextField!
	
	var modelController: ModelController!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		let quote = modelController.quote
		textView.text = quote.text
		textField.text = quote.author
	}
	
	@IBAction func save(_ sender: AnyObject) {
		let newQuote = Quote(text: textView.text, author: textField.text!)
		modelController.quote = newQuote
		dismiss(animated: true, completion: nil)
	}
}
