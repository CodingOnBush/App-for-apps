//
//  ShareViewController.swift
//  shareme
//
//  Created by VegaPunk on 07/04/2023.
//

import UIKit
import Social

class ShareViewController: SLComposeServiceViewController {
  
  override func isContentValid() -> Bool {
    // Do validation of contentText and/or NSExtensionContext attachments here
    return true
  }
  
  override func didSelectPost() {
//    if let item = extensionContext?.inputItems.first as? NSExtensionItem {
//      if let itemProvider = item.attachments?.first as? NSItemProvider {
//        if itemProvider.hasItemConformingToTypeIdentifier("public.url") {
//          itemProvider.loadItem(forTypeIdentifier: "public.url", options: nil, completionHandler: { (url, error) -> Void in
//            if let shareURL = url as? NSURL {
//              // send url to server to share the link
//              print("RESULT : \(shareURL)")
//            }
//            self.extensionContext?.completeRequest(returningItems: [], completionHandler:nil)
//          })
//        }
//      }
//    }
    // This is called after the user selects Post. Do the upload of contentText and/or NSExtensionContext attachments.
    
    // Inform the host that we're done, so it un-blocks its UI. Note: Alternatively you could call super's -didSelectPost, which will similarly complete the extension context.
    self.extensionContext!.completeRequest(returningItems: [], completionHandler: nil)
  }
  
  override func configurationItems() -> [Any]! {
    // To add configuration options via table cells at the bottom of the sheet, return an array of SLComposeSheetConfigurationItem here.
    return []
  }
  
}
