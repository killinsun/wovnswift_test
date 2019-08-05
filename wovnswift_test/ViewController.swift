//
//  ViewController.swift
//  wovnswift_test
//
//  Created by 竹内涼太 on 2019/07/19.
//  Copyright © 2019 竹内涼太. All rights reserved.
//

import UIKit
import WebKit
import WOVNswift


class ViewController: UIViewController, WKUIDelegate, WovnExtendablePublic {
    
    @IBOutlet weak var langSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "TOP"
        
        
        Wovn.setScreenName(controller: self, screenName: "TopScreen")
        Wovn.changeLang(lang: Lang.japanese)
        Wovn.translateView(view: self.view)
        
        langSwitch.isOn = true
    }

    @IBAction func goWebView(_ sender: Any) {
        
        let storyboard: UIStoryboard = self.storyboard!
        let webkitView = storyboard.instantiateViewController(withIdentifier: "webkitView")
        self.navigationController?.pushViewController(webkitView, animated: true)

    }
    

    @IBAction func toggleLangSw(_ sender: Any) {
        
        if(langSwitch.isOn){
            Wovn.changeLang(lang: Lang.japanese)
        }else{
            Wovn.changeLang(lang: Lang.english)
        }
    }
    

}


