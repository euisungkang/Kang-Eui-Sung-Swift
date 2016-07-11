//
//  GridView.swift
//  Assignment3
//
//  Created by Eui Sung Kang on 7/10/16.
//  Copyright © 2016 Kang, Eui Sung. All rights reserved.
//

import UIKit

@IBDesignable


class GridView: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()}

    
    enum CellState:String
    {
        case Living = "Living"
        case Empty = "Empty"
        case Born = "Born"
        case Died = "Died"
        func rawreturn() -> String
        {
            switch self
            {
            case.Living:
                return Living.rawValue
            case.Empty:
                return Empty.rawValue
            case.Born:
                return Born.rawValue
            case.Died:
                return Died.rawValue
            }
        }
        func AllValues() -> Array<CellState>
        {
            let All: Array = [CellState.Living, CellState.Empty, CellState.Born, CellState.Died]
            return All
        }
        func toggle(value:CellState) -> CellState
        {
            switch self
            {
            case.Empty:
                return .Living
            case.Died:
                return .Living
            case.Born:
                return .Empty
            case.Living:
                return .Empty
            }
        }
    }
    var test = CellState.Living.rawreturn()
    @IBInspectable var rows = 20
    @IBInspectable var cols = 20
    @IBInspectable var livingColor = UIColor.blueColor()
    @IBInspectable var emptyColor = UIColor.greenColor()
    @IBInspectable var diedColor = UIColor.redColor()
    @IBInspectable var gridColor = UIColor.blackColor()
    @IBInspectable var gridWidth: CGFloat
    
    var grid: [Array<CellState>]
    var grid2: [CellState]
    var didSet:Bool
    init()
    {
        func generate()
        {
        for _ in 0..<rows
        {
            for i in 0..<cols
            {
                grid2[i] = .Empty
            }
            grid.append(grid2)
        }
        }
        
        for _ in 0..<rows
        {
            for i in 0..<cols
            {
                if (grid2[i] != .Empty)
                {
                    while(grid2[i] != .Empty)
                    {
                        generate()
                    }
                }
            }
            grid.append(grid2)
        }
    }
    
    override func drawRect(rect: CGRect)
    {
        let path = UIBezierPath(rect: rect)
        livingColor.setFill()
        path.fill()
    }
}




