//
//  ViewController.swift
//  FederalTax
//
//  Created by Justus Post on 2019-10-31.
//  Copyright © 2019 Justus Post. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    // Properties
    
    @IBOutlet weak var UserName: UITextField!
    @IBOutlet weak var UserIncome: UITextField!
    @IBOutlet weak var LabelToUseOne: UILabel!
    @IBOutlet weak var LabeToUseTwo: UILabel!
    var TaxToGive :Double = 0
    var AverageTax: Double = 0
    // Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
    @IBAction func TaxCalculation(_ sender: Any) {
        
        guard let Name = UserName.text else {
            LabelToUseOne.text = "Please enter a Name"
        return
        }
        
        guard let IncomeToTaxText = UserName.text else {
            LabelToUseOne.text = "Please enter a Number"
            return
        }
        
        guard let IncomeToTaxNumber = Double(IncomeToTaxText) else {
            LabelToUseOne.text = "Please Enter your Income in Dollar"
            return
        }
        
        switch IncomeToTaxNumber {
        case (210_371...) :
            TaxToGive = (IncomeToTaxNumber-210_371) * 0.33 + 62_704 * 0.29 + 52_408 * 0.26 + 47_629 * 0.205 + 47_630 * 0.15 &&
            AverageTax = (33 + 29 + 26 + 20.5 + 15)/5
        case (147_667...210_371): TaxToGive = (IncomeToTaxNumber - 147_667) * 0.29  + 52_408 * 0.26 + 47_629 * 0.205 + 47_630 * 0.15 &&
            AverageTax = (29 + 26 + 20.5 + 15)/4
        case (95_259...147_667): TaxToGive = (IncomeToTaxNumber - 52_408) * 0.26  + 47_629 * 0.205 + 47_630 * 0.15 &&
            AverageTax = (26 + 20.5 + 15)/3
        case (47_630...95_258): TaxToGive = (IncomeToTaxNumber - 47_629) * 0.205 + 47_630 * 0.15 &&
            AverageTax = (20.5 + 15)/2
        default: TaxToGive = IncomeToTaxNumber * 0.15 && AverageTax = 15
        
        
            
        LabelToUseOne.text = "\(Name) your federal Tax Owning is \(TaxToGive)"
        LabeToUseTwo.text = "Effective tax Rate is \(AverageTax)"
        
       
        }
        
    }
    
}

    


