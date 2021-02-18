//
//  WebViewController.swift
//  bmi 12-1
//
//  Created by 김송현 on 2021/02/18.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goNaver(_ sender: UIButton) {
        guard let url = URL(string: "https://m.naver.com") else { return }
        let request = URLRequest(url: url)
        webView?.load(request)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
