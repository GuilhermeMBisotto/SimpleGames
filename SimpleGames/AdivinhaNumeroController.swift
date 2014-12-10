//
//  AdivinhaNumeroController.swift
//  SimpleGames
//
//  Created by Guilherme Moresco Bisotto on 12/10/14.
//  Copyright (c) 2014 BEPiD.GuilhermeBisotto. All rights reserved.
//


import UIKit

class AdivinhaNumeroController: UIViewController {
    
    
    @IBOutlet var AButton: UIButton!
    @IBOutlet var BButton: UIButton!
    @IBOutlet var CButton: UIButton!
    @IBOutlet var DButton: UIButton!
    @IBOutlet var EButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ChangeButtonStatus(sender: UIButton) {
        sender.selected = (sender.selected == false ? true : false);
    }
    
    @IBAction func CalculeNumber(sender: UIButton) {
        
        var a: Int,b: Int,c: Int,d: Int,e: Int;
        
        if AButton.selected == true {
            a = 1;
        }
        else {
            a = 0;
        }
        if BButton.selected == true {
            b = 2;
        }
        else {
            b = 0;
        }
        if CButton.selected == true {
            c = 4;
        }
        else {
            c = 0;
        }
        if DButton.selected == true {
            d = 8;
        }
        else {
            d = 0;
        }
        if EButton.selected == true {
            e = 16;
        }
        else {
            e = 0;
        }
        
        var number = a + b + c + d + e;
        
        var alertController: UIAlertController;
        
        if number <= 0 || number >= 31 {
            alertController = UIAlertController(title: "Ops...", message:
                "Você não prestou atenção nas instruções, o número encontrado foi: \(number)", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default,handler: nil))
        }
        
        else {
            alertController = UIAlertController(title: "Achei seu número", message:
                "Seu número é: \(number)", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default,handler: nil))
        }
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
}