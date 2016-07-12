//
//  GridView.swift
//  Assignment3
//
//  Created by Eui Sung Kang on 7/10/16.
//  Copyright © 2016 Kang, Eui Sung. All rights reserved.
//
import Foundation
import UIKit
@IBDesignable

class GridView: UIView
{
    @IBInspectable var rows = 20
    @IBInspectable var cols = 20
    @IBInspectable var livingColor = UIColor.blueColor()
    @IBInspectable var emptyColor = UIColor.greenColor()
    @IBInspectable var diedColor = UIColor.redColor()
    @IBInspectable var gridColor = UIColor.blackColor()
    @IBInspectable var gridWidth: CGFloat = 2.0
    
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

    
    var grid: [[CellState]]
    var grid2: [CellState]
    var didSet:Bool
    func generate()
    {
        for x in 0...rows{
            for y in 0...cols{
                grid[x][y] = CellState.Empty
            }
        }
    }
    
        func drawLines(rect: CGRect)
        {
            let plusWidth: CGFloat = min(bounds.width, bounds.height)
            var pluspath = UIBezierPath()
            pluspath.lineWidth = gridWidth
            //for x in 0...20
            //{
            //  for y in 0...20
            //{
            pluspath.addLineToPoint(CGPoint(
                x:bounds.width,
                y:bounds.height/2))
            pluspath.addLineToPoint(CGPoint(
                x:bounds.width - bounds.width,
                y:bounds.height/2))
            
            //}
            //}
            UIColor.blueColor().setStroke()
            pluspath.stroke()
        }
}




