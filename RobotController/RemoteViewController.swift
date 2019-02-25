//
//  RemoteViewController.swift
//  RobotController
//
//  Created by SHLOMI on 20 Adar I 5779.
//  Copyright © 5779 SHLOMI. All rights reserved.
//

import UIKit

class RemoteViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var up: UIImageView!
    
    @IBOutlet weak var right: UIImageView!
    
    @IBOutlet weak var down: UIImageView!
    
    
    @IBOutlet weak var left: UIImageView!
    
    
    @IBOutlet weak var circle: UIImageView!
    
    @IBOutlet weak var triangle: UIImageView!
    
    @IBOutlet weak var x: UIImageView!
    
    @IBOutlet weak var square: UIImageView!
    
   let appDel = UIApplication.shared.delegate as! AppDelegate
    override func viewDidLoad() {
      
        super.viewDidLoad()
        appDel.myOrientation = .landscape
        UIDevice.current.setValue(UIInterfaceOrientation.landscapeLeft.rawValue, forKey: "orientation")
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        
        let tapGestureRecognizer_x = UITapGestureRecognizer(target: self, action: #selector(x_button(tapGestureRecognizer:)))
        x.isUserInteractionEnabled = true
        x.addGestureRecognizer(tapGestureRecognizer_x)
        
        let tapGestureRecognizer_triangle = UITapGestureRecognizer(target: self, action: #selector(triangle_button(tapGestureRecognizer:)))
        triangle.isUserInteractionEnabled = true
        triangle.addGestureRecognizer(tapGestureRecognizer_triangle)
        
        let tapGestureRecognizer_circle = UITapGestureRecognizer(target: self, action: #selector(circle_button(tapGestureRecognizer:)))
        circle.isUserInteractionEnabled = true
        circle.addGestureRecognizer(tapGestureRecognizer_circle)
        
        let tapGestureRecognizer_up = UITapGestureRecognizer(target: self, action: #selector(move_up(tapGestureRecognizer:)))
        up.isUserInteractionEnabled = true
        up.addGestureRecognizer(tapGestureRecognizer_up)
        
        let tapGestureRecognizer_down = UITapGestureRecognizer(target: self, action: #selector(move_down(tapGestureRecognizer:)))
        down.isUserInteractionEnabled = true
        down.addGestureRecognizer(tapGestureRecognizer_down)
        
        let tapGestureRecognizer_left = UITapGestureRecognizer(target: self, action: #selector(move_left(tapGestureRecognizer:)))
        left.isUserInteractionEnabled = true
        left.addGestureRecognizer(tapGestureRecognizer_left)
        
        let tapGestureRecognizer_right = UITapGestureRecognizer(target: self, action: #selector(move_right(tapGestureRecognizer:)))
        right.isUserInteractionEnabled = true
        right.addGestureRecognizer(tapGestureRecognizer_right)
        // Do any additional setup after loading the view.
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    private func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.landscapeLeft
    }
    

    
    
    @objc func x_Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        print("x")
        // Your action
    }
    
    
   @objc func move_left(tapGestureRecognizer: UITapGestureRecognizer){
        let tappedImage = tapGestureRecognizer.view as! UIImageView
    print("move_left")
    }
   @objc func move_right(tapGestureRecognizer: UITapGestureRecognizer){
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        print("move_right")
    }
   @objc func move_up(tapGestureRecognizer: UITapGestureRecognizer){
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        print("move_up")
    }
 @objc   func move_down(tapGestureRecognizer: UITapGestureRecognizer){
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        print("move_down")
    }
     @objc func x_button(tapGestureRecognizer: UITapGestureRecognizer){
        let tappedImage = tapGestureRecognizer.view as! UIImageView
    print("x")
        print("x_button")
    }
  @objc  func triangle_button(tapGestureRecognizer: UITapGestureRecognizer){
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        print("triangle_button")
    }
  @objc  func circle_button(tapGestureRecognizer: UITapGestureRecognizer){
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        print("circle_button")
    }
@objc    func square_button(tapGestureRecognizer: UITapGestureRecognizer){
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        print("square_button")
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
