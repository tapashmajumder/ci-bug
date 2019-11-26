//
//  UIWebViewController.swift
//  ci-bug
//
//  Created by Tapash Majumder on 11/26/19.
//  Copyright © 2019 Iterable. All rights reserved.
//

import UIKit

class UIWebViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func loadView() {
        super.loadView()
        
        let html = "<html><body style='text-align: center; font-size: 30px;'>Hello, World!<body></html><meta name='viewport' content='initial-scale=1.0' />"

        view.backgroundColor = UIColor.clear
        let webView = UIWebView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
        webView.loadHTMLString(html, baseURL: URL(string: ""))
        webView.scrollView.bounces = false
        webView.isOpaque = false
        webView.backgroundColor = UIColor.clear
        
        view.addSubview(webView)
    }

}
