//
//  ViewController_1.swift
//  kamakuraMap
//
//  Created by Yoshiki Kishimoto on 2018/04/28.
//  Copyright © 2018年 Yoshiki Kishimoto. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {
    
    
    
    
    var number :Int = 0
    
    @IBAction func kama() {
        number += 1
    }
    @IBAction func hase() {
        number += 2
    }
    
    @IBAction func eno(_ sender: Any) {
        number += 3
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let MapViewController:MapViewController = segue.destination as! MapViewController
        MapViewController.num = self.number
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
