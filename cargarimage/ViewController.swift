//
//  ViewController.swift
//  cargarimage
//
//  Created by Nosferatu on 21/02/2019.
//  Copyright © 2019 luissancar. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var imagenn: UIImageView!
    var ima:Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        leeImagenUrl(url: "https://www.microchip.com/_images/ics/medium-ATtiny85-PDIP-8.png")
    }

    @IBAction func mostrar(_ sender: Any) {
        ima = !(ima)
        if ima{
             leeImagenUrl(url: "https://www.microchip.com/_images/ics/medium-ATtiny85-PDIP-8.png")
            }
        else{
           
            leeImagenUrl(url:"https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png")
        }
        }
    func leeImagenUrl(url: String)  {
        let url=URL(string:url)
        let data=try? Data(contentsOf: url!)
        imagenn.image=UIImage(data: data!)
    }
}

