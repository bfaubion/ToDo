//
//  SecondViewController.swift
//  ToDo
//
//  Created by Ben Faubion on 12/28/14.
//  Copyright (c) 2014 whatever. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    
    
    @IBOutlet weak var toDoItem: UITextField!
    @IBAction func addToDo(sender: AnyObject)
    {
        self.view.endEditing(true)
        toDoItems.append(toDoItem.text)
        
        let fixedToDoItems = toDoItems
        NSUserDefaults.standardUserDefaults().setObject(fixedToDoItems, forKey: "toDoItems")
        NSUserDefaults.standardUserDefaults().synchronize()
        
       // var storedToDoItems: AnyObject! = NSUserDefaults.standardUserDefaults().objectForKey("toDoItems")
        
        //println(storedToDoItems)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }


}

