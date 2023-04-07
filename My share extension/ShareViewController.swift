//
//  ShareViewController.swift
//  My share extension
//
//  Created by VegaPunk on 07/04/2023.
//

import UIKit
//import Social

class ShareViewController: UIViewController {
  @IBOutlet weak var myLabel: UILabel!
  
  override func viewDidLoad() {
    for item in extensionContext!.inputItems as! [NSExtensionItem] {
      if let attachments = item.attachments {
        for itemProvider in attachments {
          if itemProvider.hasItemConformingToTypeIdentifier("public.url") {
            itemProvider.loadItem(forTypeIdentifier: "public.url", options: nil, completionHandler: { (item, error) in
              let url = (item as! NSURL).absoluteURL!
              self.myLabel.text = "\(url)"
            })
          }
        }
      }
    }
  }
  
  
}
