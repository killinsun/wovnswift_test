//
//  webkitViewController.swift
//  wovnswift_test
//
//  Created by 竹内涼太 on 2019/07/22.
//  Copyright © 2019 竹内涼太. All rights reserved.
//

import UIKit
import WebKit

class WebkitViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
     override func loadView(){
         self.navigationItem.title = "WEB View"

         let webConfiguration = WKWebViewConfiguration()
         webView = WKWebView(frame: .zero, configuration: webConfiguration)
         webView.uiDelegate = self
         view = webView
     }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
         let myUrl = URL(string: "https://dev-nginx.killinsun.com")
         let myRequest = URLRequest(url: myUrl!)
         webView.load(myRequest)
    }
    

}


