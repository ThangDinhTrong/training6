//
//  ViewController.swift
//  training6
//
//  Created by dinh trong thang on 7/20/16.
//  Copyright © 2016 dinh trong thang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIImageView!
    @IBOutlet weak var view2: UIImageView!
    @IBOutlet weak var view3: UIImageView!
    @IBOutlet weak var view4: UIImageView!
    @IBOutlet weak var view5: UIImageView!
    @IBOutlet weak var view6: UIImageView!
    @IBOutlet weak var view7: UIImageView!
    @IBOutlet weak var view8: UIImageView!
    @IBOutlet weak var view9: UIImageView!
    @IBOutlet weak var view10: UIImageView!
    @IBOutlet weak var view11: UIImageView!
    @IBOutlet weak var view12: UIImageView!
    var mapImageString : [UIImageView:String]!
    @IBOutlet var tapView1 : UITapGestureRecognizer! = UITapGestureRecognizer()
    @IBOutlet var tapView2 : UITapGestureRecognizer! = UITapGestureRecognizer()
    @IBOutlet var tapView3 : UITapGestureRecognizer! = UITapGestureRecognizer()
    @IBOutlet var tapView4: UITapGestureRecognizer! = UITapGestureRecognizer()
    @IBOutlet var tapView5: UITapGestureRecognizer! = UITapGestureRecognizer()
    @IBOutlet var tapView6: UITapGestureRecognizer! = UITapGestureRecognizer()
    @IBOutlet var tapView7: UITapGestureRecognizer! = UITapGestureRecognizer()
    @IBOutlet var tapView8: UITapGestureRecognizer! = UITapGestureRecognizer()
    @IBOutlet var tapView9: UITapGestureRecognizer! = UITapGestureRecognizer()
    @IBOutlet var tapView10: UITapGestureRecognizer! = UITapGestureRecognizer()
    @IBOutlet var tapView11: UITapGestureRecognizer! = UITapGestureRecognizer()
    @IBOutlet var tapView12: UITapGestureRecognizer! = UITapGestureRecognizer()
    
    
    @IBOutlet var swipeView1 : UISwipeGestureRecognizer! = UISwipeGestureRecognizer()
    @IBOutlet var swipeView2 : UISwipeGestureRecognizer! = UISwipeGestureRecognizer()
    @IBOutlet var swipeView3 : UISwipeGestureRecognizer! = UISwipeGestureRecognizer()
    @IBOutlet var swipeView4 : UISwipeGestureRecognizer! = UISwipeGestureRecognizer()
    @IBOutlet var swipeView5 : UISwipeGestureRecognizer! = UISwipeGestureRecognizer()
    @IBOutlet var swipeView6 : UISwipeGestureRecognizer! = UISwipeGestureRecognizer()
    @IBOutlet var swipeView7 : UISwipeGestureRecognizer! = UISwipeGestureRecognizer()
    @IBOutlet var swipeView8 : UISwipeGestureRecognizer! = UISwipeGestureRecognizer()
    @IBOutlet var swipeView9 : UISwipeGestureRecognizer! = UISwipeGestureRecognizer()
    @IBOutlet var swipeView10 : UISwipeGestureRecognizer! = UISwipeGestureRecognizer()
    @IBOutlet var swipeView11 : UISwipeGestureRecognizer! = UISwipeGestureRecognizer()
    @IBOutlet var swipeView12 : UISwipeGestureRecognizer! = UISwipeGestureRecognizer()
    
    var selected : Bool! = false
    var imageText1 : String! = "1"
    var imageText2 : String! = "2"
    var tempView : UIImageView!
    var viewTarget : UIImageView!

    var nameImageArray = ["1","2","3","4","5","6","1","2","3","4","5","6"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.gestureGame()
    }
    
    func setImageForView()  {
        view1.image = UIImage(named: "8")
        view2.image = UIImage(named: "8")
        view3.image = UIImage(named: "8")
        view4.image = UIImage(named: "8")
        view5.image = UIImage(named: "8")
        view6.image = UIImage(named: "8")
        view7.image = UIImage(named: "8")
        view8.image = UIImage(named: "8")
        view9.image = UIImage(named: "8")
        view10.image = UIImage(named: "8")
        view11.image = UIImage(named: "8")
        view12.image = UIImage(named: "8")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func gestureGame() {
        view1.userInteractionEnabled = true
        view2.userInteractionEnabled = true
        view3.userInteractionEnabled = true
        view4.userInteractionEnabled = true
        view5.userInteractionEnabled = true
        view6.userInteractionEnabled = true
        view7.userInteractionEnabled = true
        view8.userInteractionEnabled = true
        view9.userInteractionEnabled = true
        view10.userInteractionEnabled = true
        view11.userInteractionEnabled = true
        view12.userInteractionEnabled = true
        
        view1.addGestureRecognizer(tapView1)
        view2.addGestureRecognizer(tapView2)
        view3.addGestureRecognizer(tapView3)
        view4.addGestureRecognizer(tapView4)
        view5.addGestureRecognizer(tapView5)
        view6.addGestureRecognizer(tapView6)
        view7.addGestureRecognizer(tapView7)
        view8.addGestureRecognizer(tapView8)
        view9.addGestureRecognizer(tapView9)
        view10.addGestureRecognizer(tapView10)
        view11.addGestureRecognizer(tapView11)
        view12.addGestureRecognizer(tapView12)
        
        tapView1.addTarget(self,action: #selector(tapAction))
        tapView2.addTarget(self,action:#selector(tapAction))
        tapView3.addTarget(self,action:#selector(tapAction))
        tapView4.addTarget(self,action:#selector(tapAction))
        tapView5.addTarget(self,action:#selector(tapAction))
        tapView6.addTarget(self,action:#selector(tapAction))
        tapView7.addTarget(self,action:#selector(tapAction))
        tapView8.addTarget(self,action:#selector(tapAction))
        tapView9.addTarget(self,action:#selector(tapAction))
        tapView10.addTarget(self,action:#selector(tapAction))
        tapView11.addTarget(self,action:#selector(tapAction))
        tapView12.addTarget(self,action:#selector(tapAction))
        
        view1.addGestureRecognizer(swipeView1)
        view2.addGestureRecognizer(swipeView2)
        view3.addGestureRecognizer(swipeView3)
        view4.addGestureRecognizer(swipeView4)
        view5.addGestureRecognizer(swipeView5)
        view6.addGestureRecognizer(swipeView6)
        view7.addGestureRecognizer(swipeView7)
        view8.addGestureRecognizer(swipeView8)
        view9.addGestureRecognizer(swipeView9)
        view10.addGestureRecognizer(swipeView10)
        view11.addGestureRecognizer(swipeView11)
        view12.addGestureRecognizer(swipeView12)
        
        swipeView1.addTarget(self,action: #selector(self.swipeAction))
        swipeView2.addTarget(self,action: #selector(self.swipeAction))
        swipeView3.addTarget(self,action: #selector(self.swipeAction))
        swipeView4.addTarget(self,action: #selector(self.swipeAction))
        swipeView5.addTarget(self,action: #selector(self.swipeAction))
        swipeView6.addTarget(self,action: #selector(self.swipeAction))
        swipeView7.addTarget(self,action: #selector(self.swipeAction))
        swipeView8.addTarget(self,action: #selector(self.swipeAction))
        swipeView9.addTarget(self,action: #selector(self.swipeAction))
        swipeView10.addTarget(self,action: #selector(self.swipeAction))
        swipeView11.addTarget(self,action: #selector(self.swipeAction))
        swipeView12.addTarget(self,action: #selector(self.swipeAction))
        
        setImageForView()
        randomArray()

    }
    
    func tapAction(tapRecog:UITapGestureRecognizer) {
        print("Tap")
        if selected == false {
            selected = true
            viewTarget = tapRecog.view as! UIImageView
            tempView = viewTarget
            switch viewTarget {
            case view1:
                viewTarget.image = UIImage(named: nameImageArray[0])
                imageText1 = nameImageArray[0]
            case view2:
                viewTarget.image = UIImage(named: nameImageArray[1])
                imageText1 = nameImageArray[1]
            case view3:
                viewTarget.image = UIImage(named: nameImageArray[2])
                imageText1 = nameImageArray[2]
            case view4:
                viewTarget.image = UIImage(named: nameImageArray[3])
                imageText1 = nameImageArray[3]
            case view5:
                viewTarget.image = UIImage(named: nameImageArray[4])
                imageText1 = nameImageArray[4]
            case view6:
                viewTarget.image = UIImage(named: nameImageArray[5])
                imageText1 = nameImageArray[5]
            case view7:
                viewTarget.image = UIImage(named: nameImageArray[6])
                imageText1 = nameImageArray[6]
            case view8:
                viewTarget.image = UIImage(named: nameImageArray[7])
                imageText1 = nameImageArray[7]
            case view9:
                viewTarget.image = UIImage(named: nameImageArray[8])
                imageText1 = nameImageArray[8]
            case view10:
                viewTarget.image = UIImage(named: nameImageArray[9])
                imageText1 = nameImageArray[9]
            case view11:
                viewTarget.image = UIImage(named: nameImageArray[10])
                imageText1 = nameImageArray[10]
            default:
                 viewTarget.image = UIImage(named: nameImageArray[11])
                imageText1 = nameImageArray[11]
            }
            viewTarget.gestureRecognizers![0].enabled = false
            viewTarget.gestureRecognizers![1].enabled = false
        }
        else {
            selected = false
            viewTarget = tapRecog.view as! UIImageView
            switch viewTarget {
            case view1:
                viewTarget.image = UIImage(named: nameImageArray[0])
                imageText2 = nameImageArray[0]
        
            case view2:
                viewTarget.image = UIImage(named: nameImageArray[1])
                imageText2 = nameImageArray[1]
          
            case view3:
                viewTarget.image = UIImage(named: nameImageArray[2])
                imageText2 = nameImageArray[2]
            case view4:
                viewTarget.image = UIImage(named: nameImageArray[3])
                imageText2 = nameImageArray[3]
            case view5:
                viewTarget.image = UIImage(named: nameImageArray[4])
                imageText2 = nameImageArray[4]
            case view6:
                viewTarget.image = UIImage(named: nameImageArray[5])
                imageText2 = nameImageArray[5]
            case view7:
                viewTarget.image = UIImage(named: nameImageArray[6])
                imageText2 = nameImageArray[6]
            case view8:
                viewTarget.image = UIImage(named: nameImageArray[7])
                imageText2 = nameImageArray[7]
            case view9:
                viewTarget.image = UIImage(named: nameImageArray[8])
                imageText2 = nameImageArray[8]
            case view10:
                viewTarget.image = UIImage(named: nameImageArray[9])
                imageText2 = nameImageArray[9]
            case view11:
                viewTarget.image = UIImage(named: nameImageArray[10])
                imageText2 = nameImageArray[10]
            default:
                viewTarget.image = UIImage(named: nameImageArray[11])
                imageText2 = nameImageArray[11]
            }
            
            
            NSTimer.scheduledTimerWithTimeInterval(4, target: self, selector: #selector(ViewController.processImage), userInfo: nil, repeats: false)

            
            

        }
    }
    func swipeAction(swipeRecog : UISwipeGestureRecognizer) {
        print("Swipe")
        if selected == false {
            selected = true
            viewTarget = swipeRecog.view as! UIImageView
            tempView = viewTarget
            switch viewTarget {
            case view1:
                viewTarget.image = UIImage(named: nameImageArray[0])
                imageText1 = nameImageArray[0]
            case view2:
                viewTarget.image = UIImage(named: nameImageArray[1])
                imageText1 = nameImageArray[1]
            case view3:
                viewTarget.image = UIImage(named: nameImageArray[2])
                imageText1 = nameImageArray[2]
            case view4:
                viewTarget.image = UIImage(named: nameImageArray[3])
                imageText1 = nameImageArray[3]
            case view5:
                viewTarget.image = UIImage(named: nameImageArray[4])
                imageText1 = nameImageArray[4]
            case view6:
                viewTarget.image = UIImage(named: nameImageArray[5])
                imageText1 = nameImageArray[5]
            case view7:
                viewTarget.image = UIImage(named: nameImageArray[6])
                imageText1 = nameImageArray[6]
            case view8:
                viewTarget.image = UIImage(named: nameImageArray[7])
                imageText1 = nameImageArray[7]
            case view9:
                viewTarget.image = UIImage(named: nameImageArray[8])
                imageText1 = nameImageArray[8]
            case view10:
                viewTarget.image = UIImage(named: nameImageArray[9])
                imageText1 = nameImageArray[9]
            case view11:
                viewTarget.image = UIImage(named: nameImageArray[10])
                imageText1 = nameImageArray[10]
            default:
                viewTarget.image = UIImage(named: nameImageArray[11])
                imageText1 = nameImageArray[11]
            }
            viewTarget.gestureRecognizers![0].enabled = false
            viewTarget.gestureRecognizers![1].enabled = false
        }
        else {
            selected = false
            viewTarget = swipeRecog.view as! UIImageView
            switch viewTarget {
            case view1:
                viewTarget.image = UIImage(named: nameImageArray[0])
                imageText2 = nameImageArray[0]
                
            case view2:
                viewTarget.image = UIImage(named: nameImageArray[1])
                imageText2 = nameImageArray[1]
                
            case view3:
                viewTarget.image = UIImage(named: nameImageArray[2])
                imageText2 = nameImageArray[2]
            case view4:
                viewTarget.image = UIImage(named: nameImageArray[3])
                imageText2 = nameImageArray[3]
            case view5:
                viewTarget.image = UIImage(named: nameImageArray[4])
                imageText2 = nameImageArray[4]
            case view6:
                viewTarget.image = UIImage(named: nameImageArray[5])
                imageText2 = nameImageArray[5]
            case view7:
                viewTarget.image = UIImage(named: nameImageArray[6])
                imageText2 = nameImageArray[6]
            case view8:
                viewTarget.image = UIImage(named: nameImageArray[7])
                imageText2 = nameImageArray[7]
            case view9:
                viewTarget.image = UIImage(named: nameImageArray[8])
                imageText2 = nameImageArray[8]
            case view10:
                viewTarget.image = UIImage(named: nameImageArray[9])
                imageText2 = nameImageArray[9]
            case view11:
                viewTarget.image = UIImage(named: nameImageArray[10])
                imageText2 = nameImageArray[10]
            default:
                viewTarget.image = UIImage(named: nameImageArray[11])
                imageText2 = nameImageArray[11]
            }
            
            
            NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: #selector(ViewController.processImage), userInfo: nil, repeats: false)
            
            
            
            
        }

    }
    func processImage() {
        if imageText1 == imageText2 {
            tempView.hidden = true
            viewTarget.hidden = true
        }
        else {
            print("false")
            
            tempView.image = UIImage(named: "8")
            
            tempView.gestureRecognizers![0].enabled = true
            tempView.gestureRecognizers![1].enabled = true
            viewTarget.image = UIImage(named:"8")
            
        }
        
    }
    
    func randomArray() {
        for i in 0 ..< nameImageArray.count {
            let random = Int(arc4random()%12)
            let temp = nameImageArray[i]
            nameImageArray[i] = nameImageArray[random]
            nameImageArray[random] = temp
        }
    }

}

