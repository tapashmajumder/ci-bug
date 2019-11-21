//
//  WebViewController.swift
//  ci-bug
//
//  Created by Tapash Majumder on 11/21/19.
//  Copyright © 2019 Iterable. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func loadView() {
        super.loadView()
        
        let html = "<html><body style='text-align: center; font-size: 30px;'>Hello, World!<body></html>"
        
        view.backgroundColor = UIColor.clear
        let webView = WKWebView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
        webView.loadHTMLString(html, baseURL: URL(string: ""))
        webView.scrollView.bounces = false
        webView.isOpaque = false
        webView.backgroundColor = UIColor.clear
        
        view.addSubview(webView)
    }

}
