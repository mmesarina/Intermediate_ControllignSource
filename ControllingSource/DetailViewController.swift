//
//  DetailViewController.swift
//  ControllingSource
//
//  Created by Audrey M Tam on 11/11/2014.
//  Copyright (c) 2014 Ray Wenderlich. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var personNameLabel: UILabel!
    @IBOutlet weak var famousQuoteLabel: UILabel!

    var quoteObject: QuoteObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let quote: QuoteObject = quoteObject {
            if let personLabel = personNameLabel {
                personLabel.text = quote.personName
            }
            if let quoteLabel = famousQuoteLabel {
                quoteLabel.text = quote.famousQuote
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

