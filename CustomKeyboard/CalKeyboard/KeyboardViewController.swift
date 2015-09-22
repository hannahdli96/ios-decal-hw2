//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var returnKeyboardButton: UIButton!
    @IBOutlet var deleteKeyboardButton: UIButton!
    @IBOutlet var printHannahButton: UIButton!
    
    var keyboardView: UIView!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    @IBAction func printHannahAction(sender: AnyObject) {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText("Hannah")
    }
    @IBAction func deleteAction(sender: AnyObject) {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText( "why are you deleting me...")
        proxy.deleteBackward()
    }
    @IBAction func returnAction(sender: UIButton) {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText(" She's the shit.")
    }
    
    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        //view.backgroundColor = keyboardView.backgroundColor
        view.backgroundColor = UIColor .purpleColor()
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
    }


}
