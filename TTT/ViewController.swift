// ViewController.swift
//  TTT

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var winnerLabel: UILabel!
    @IBAction func resetBtn(_ sender: UIButton) {reseting()}

    var playerOneTurn = true
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    
    @IBAction func btn1(_ sender: UIButton) {playTime(btn : btn1)}
    @IBAction func btn2(_ sender: UIButton) {playTime(btn : btn2)}
    @IBAction func btn3(_ sender: UIButton) {playTime(btn : btn3)}
    @IBAction func btn4(_ sender: UIButton) {playTime(btn : btn4)}
    @IBAction func btn5(_ sender: UIButton) {playTime(btn : btn5)}
    @IBAction func btn6(_ sender: UIButton) {playTime(btn : btn6)}
    @IBAction func btn7(_ sender: UIButton) {playTime(btn : btn7)}
    @IBAction func btn8(_ sender: UIButton) {playTime(btn : btn8)}
    @IBAction func btn9(_ sender: UIButton) {playTime(btn : btn9)}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reseting()
    }

    func playTime(btn : UIButton){
        if (winnerLabel.isHidden == true){
          if (btn.backgroundColor == UIColor.gray){
            if (playerOneTurn){
              btn.backgroundColor = UIColor.red
              playerOneTurn = false
            }else{
              btn.backgroundColor = UIColor.blue
              playerOneTurn = true
            }
          }
        }
        checkWin()
    }
    
    func checkWin() {
        if(btn1.backgroundColor == btn2.backgroundColor && btn1.backgroundColor == btn3.backgroundColor && btn3.backgroundColor != UIColor.gray)
        { if ("\(btn1.backgroundColor!)" == "UIExtendedSRGBColorSpace 1 0 0 1"){winner(result: true,winnerPlayer: "Red")
        }else{winner(result: true,winnerPlayer: "Blue")}
        }
        if(btn4.backgroundColor == btn5.backgroundColor && btn4.backgroundColor == btn6.backgroundColor && btn4.backgroundColor != UIColor.gray)
        { if ("\(btn4.backgroundColor!)" == "UIExtendedSRGBColorSpace 1 0 0 1"){winner(result: true,winnerPlayer: "Red")
        }else{winner(result: true,winnerPlayer: "Blue")}
        }
        if(btn7.backgroundColor == btn8.backgroundColor && btn7.backgroundColor == btn9.backgroundColor && btn9.backgroundColor != UIColor.gray)
        { if ("\(btn7.backgroundColor!)" == "UIExtendedSRGBColorSpace 1 0 0 1"){winner(result: true,winnerPlayer: "Red")
        }else{winner(result: true,winnerPlayer: "Blue")}
        }
        if(btn1.backgroundColor == btn4.backgroundColor && btn1.backgroundColor == btn7.backgroundColor && btn1.backgroundColor != UIColor.gray)
        { if ("\(btn1.backgroundColor!)" == "UIExtendedSRGBColorSpace 1 0 0 1"){winner(result: true,winnerPlayer: "Red")
        }else{winner(result: true,winnerPlayer: "Blue")}
        }
        if(btn2.backgroundColor == btn5.backgroundColor && btn2.backgroundColor == btn8.backgroundColor && btn2.backgroundColor != UIColor.gray)
        { if ("\(btn2.backgroundColor!)" == "UIExtendedSRGBColorSpace 1 0 0 1"){winner(result: true,winnerPlayer: "Red")
        }else{winner(result: true,winnerPlayer: "Blue")}
        }
        if(btn3.backgroundColor == btn6.backgroundColor && btn3.backgroundColor == btn9.backgroundColor && btn3.backgroundColor != UIColor.gray)
        { if ("\(btn3.backgroundColor!)" == "UIExtendedSRGBColorSpace 1 0 0 1"){winner(result: true,winnerPlayer: "Red")
        }else{winner(result: true,winnerPlayer: "Blue")}
        }
        if(btn1.backgroundColor == btn5.backgroundColor && btn1.backgroundColor == btn9.backgroundColor && btn1.backgroundColor != UIColor.gray)
        { if ("\(btn1.backgroundColor!)" == "UIExtendedSRGBColorSpace 1 0 0 1"){winner(result: true,winnerPlayer: "Red")
        }else{winner(result: true,winnerPlayer: "Blue")}
        }
        if(btn7.backgroundColor == btn5.backgroundColor && btn7.backgroundColor == btn3.backgroundColor && btn7.backgroundColor != UIColor.gray)
        { if ("\(btn7.backgroundColor!)" == "UIExtendedSRGBColorSpace 1 0 0 1"){winner(result: true,winnerPlayer: "Red")
        }else{winner(result: true,winnerPlayer: "Blue")}
        }
        
        if(btn1.backgroundColor != UIColor.gray && btn2.backgroundColor != UIColor.gray && btn3.backgroundColor != UIColor.gray &&
           btn4.backgroundColor != UIColor.gray &&
           btn5.backgroundColor != UIColor.gray &&
           btn6.backgroundColor != UIColor.gray &&
           btn7.backgroundColor != UIColor.gray &&
           btn8.backgroundColor != UIColor.gray &&
           btn9.backgroundColor != UIColor.gray)
        {winner(result: false ,winnerPlayer: "It is a draw!")}
        }
    
    func winner(result : Bool, winnerPlayer : String)
    {
        winnerLabel.isHidden = false
        playerOneTurn = true
        if (result == true){
            winnerLabel.text = "Congrats \(winnerPlayer) Won"
        }
        else{
            winnerLabel.text = "\(winnerPlayer)"
        }
    }
    
    func reseting(){
        winnerLabel.isHidden = true
        
        btn1.backgroundColor = UIColor.gray
        btn2.backgroundColor = UIColor.gray
        btn3.backgroundColor = UIColor.gray
        btn4.backgroundColor = UIColor.gray
        btn5.backgroundColor = UIColor.gray
        btn6.backgroundColor = UIColor.gray
        btn7.backgroundColor = UIColor.gray
        btn8.backgroundColor = UIColor.gray
        btn9.backgroundColor = UIColor.gray
    }
}
