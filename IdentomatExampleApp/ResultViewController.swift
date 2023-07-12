//
//  ResultViewController.swift
//  IdentomatExampleApp
//
//  Created by Identomat Inc. on 12/28/20.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Api.getResult(context: self)
    }
    func success(dictionary : [String : AnyObject]){
        let data = try? JSONSerialization.data(withJSONObject: dictionary, options: [.prettyPrinted])
        let prettyPrintedString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
        let text = prettyPrintedString! as String;
        print(text)
    }
    

}
