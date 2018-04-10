//
//  ViewController.swift
//  Times Tables
//
//  Created by Matt Tripodi on 4/10/18.
//  Copyright © 2018 Matthew Tripodi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	@IBOutlet weak var numberLabel: UILabel!
	@IBOutlet weak var slider: UISlider!
	@IBOutlet weak var table: UITableView!
	
	var feedback = UISelectionFeedbackGenerator()
	
	@IBAction func sliderChanged(_ sender: Any) {
		
		print(Int(slider.value))
		
		feedback.selectionChanged()
		
		numberLabel.text = String(Int(slider.value))
		
		table.reloadData()
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 50
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
		
		cell.textLabel?.text = String((Int(slider.value)) * (indexPath.row + 1))
		
		return cell
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

