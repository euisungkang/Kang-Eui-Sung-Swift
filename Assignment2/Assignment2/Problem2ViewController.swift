//
//  Problem2ViewController.swift
//  Assignment2
//
//  Created by Eui Sung Kang on 7/5/16.
//  Copyright © 2016 Kang, Eui Sung. All rights reserved.
//

import UIKit
import Foundation

 class Problem2ViewController: UIViewController {
 
 @IBOutlet weak var ViewText: UITextView!
 @IBAction func BClicked(sender: AnyObject) {
 
var test = 0
var board2: [Bool] = [false, false, false, false, false, false]
var board: [Array<Bool>] = []
var before: [Array<Bool>] = []
var after: [Array<Bool>] = []
var y = false
for(var j = 0; j < 6; ++j)
{
    for (var i = 0; i < 6; ++i)
    {
        var x = arc4random_uniform(2)
        switch x
        {
        case 0 :
            y = false
        default:
            y = true
        }
        
        board2[i] = y
    }
    board.append(board2)
}
before = board

var counter = 0
for(var q = 1; q < 6; ++q)
{
    for(var w = 1; w < 6; ++w)
    {
        if (before[q][w] == true)
        {
            ++counter
        }
    }
}

for(var j = 0; j < 6; ++j)
{
    for (var i = 0; i < 6; ++i)
    {
        if arc4random_uniform(3) == 1 {
            board2[i] = y
        }
    }
    board.append(board2)
}
after = board

//ViewText.text = "There are \(counter) cells alive"

var aftercopy: [Array<Bool>] = []
var counter2 = 0
for (var q = 1; q < 6; ++q)
{
    for(var w = 1; w < 6; ++w)
    {
        while(aftercopy[(q - 1)][(w - 1)] ||
            aftercopy[(q - 1)][(w + 1)] ||
            aftercopy[(q)][(w - 1)] ||
            aftercopy[(q)][(w + 1)] ||
            aftercopy[(q + 1)][(w)] ||
            aftercopy[(q + 1)][(w - 1)] ||
            aftercopy[(q + 1)][(w + 1)] == true)
        {
            switch aftercopy
            {
            case aftercopy[(q - 1)][w] == true:
                ++counter2
                aftercopy[(q - 1)][w] = false
            case aftercopy[(q - 1)][(w - 1)] == true:
                ++counter2
                aftercopy[(q - 1)][(w - 1)] = false
            case aftercopy[(q - 1)][(w + 1)] == true:
                ++counter2
                aftercopy[(q - 1)][(w + 1)] = false
            case aftercopy[(q)][(w - 1)] == true:
                ++counter2
                aftercopy[(q)][(w - 1)] = false
            case aftercopy[(q)][(w + 1)] == true:
                ++counter2
                aftercopy[(q)][(w + 1)] = false
            case aftercopy[(q + 1)][(w)] == true:
                ++counter2
                aftercopy[(q + 1)][(w)] = false
            case aftercopy[(q + 1)][(w - 1)] == true:
                ++counter2
                aftercopy[(q + 1)][(w - 1)] = false
            case aftercopy[(q + 1)][(w + 1)] == true:
                ++counter2
                aftercopy[(q + 1)][(w + 1)] = false
            }
        }

        }
        aftercopy[(q - 1)][w]
    
                  switch aftercopy[q][w]
 
        
    }
}











 override func viewDidLoad() {
 super.viewDidLoad()}
 override func didReceiveMemoryWarning() {
 super.didReceiveMemoryWarning()}
 
 
 /*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
 // Get the new view controller using segue.destinationViewController.
 // Pass the selected object to the new view controller.
 }
 */
 


